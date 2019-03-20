#include "planner/expression_binder.hpp"
#include "planner/expression/bound_comparison_expression.hpp"
#include "parser/expression/comparison_expression.hpp"

using namespace duckdb;
using namespace std;

BindResult ExpressionBinder::BindExpression(ComparisonExpression &expr, uint32_t depth) {
	// first try to bind the children of the case expression
	string left_result = Bind(&expr.left, depth);
	string right_result = Bind(&expr.right, depth);
	if (!left_result.empty()) {
		return move(left_result);
	}
	if (!right_result.empty()) {
		return move(right_result);
	}
	// the children have been successfully resolved
	auto left = GetExpression(*expr.left);
	auto right = GetExpression(*expr.right);
	// cast the input types to the same type
	// now obtain the result type of the input types
	auto input_type = MaxSQLType(left->sql_type, right->sql_type);
	// add casts (if necessary)
	left = AddCastToType(move(left), input_type);
	right = AddCastToType(move(right), input_type);
	// now create the bound comparison expression
	return BindResult(make_unique<BoundComparisonExpression>(expr.type, move(left), move(right));
}