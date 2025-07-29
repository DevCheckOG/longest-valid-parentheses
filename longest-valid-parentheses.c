#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int longestValidParentheses(char* s) {
    int n = strlen(s);
    int* stack = (int*)malloc((n + 1) * sizeof(int));
    int top = -1;
    stack[++top] = -1;
    int maxLen = 0;
    
    for (int i = 0; i < n; i++) {
        if (s[i] == '(') {
            stack[++top] = i;
        } else {
            top--;
            if (top == -1) {
                stack[++top] = i;
            } else {
                maxLen = (i - stack[top]) > maxLen ? (i - stack[top]) : maxLen;
            }
        }
    }
    
    free(stack);
    return maxLen;
}

int main() {
    char s1[] = "(()";
    printf("Example 1:\n");
    printf("s = \"(()\"\n");
    printf("Longest Valid Parentheses: %d\n\n", longestValidParentheses(s1));
    
    char s2[] = ")()())";
    printf("Example 2:\n");
    printf("s = \")()())\"\n");
    printf("Longest Valid Parentheses: %d\n\n", longestValidParentheses(s2));
    
    char s3[] = "";
    printf("Example 3:\n");
    printf("s = \"\"\n");
    printf("Longest Valid Parentheses: %d\n", longestValidParentheses(s3));
    
    return 0;
}
