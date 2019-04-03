/* eslint-disable */
/**
 * ESLint Configuration
 *
 * @docs http://eslint.org/docs/user-guide/configuring
 */
const config = {};

/**
 * Parser Options
 *
 * @docs http://eslint.org/docs/user-guide/configuring#specifying-parser-options
 */
config.parser = 'babel-eslint';
config.parserOptions = {
    ecmaVersion: 6,
    ecmaFeatures: {
        jsx: true,
        spread: true,
        classes: true,
        modules: true,
        impliedStrict: true,
        arrowFunctions: true,
        experimentalObjectRestSpread: true
    },
    sourceType: 'module'
};

/**
 * Environment
 *
 * @docs http://eslint.org/docs/user-guide/configuring#specifying-environments
 */
config.env = {
    es6: true,
    node: true,
    jest: true,
    browser: true
};

/**
 * Extends
 *
 * @docs http://eslint.org/docs/user-guide/configuring#extending-configuration-files
 */
config.extends = [
    'plugin:jsx-a11y/recommended'
    // https://github.com/prettier/eslint-config-prettier
    // 'plugin:prettier/recommended'
];

/**
 * Plugins
 *
 * @docs http://eslint.org/docs/user-guide/configuring#using-the-configuration-from-a-plugin
 */
config.plugins = [
    // https://github.com/babel/eslint-plugin-babel
    'babel',
    // https://github.com/azeemba/eslint-plugin-json
    'json',
    // https://github.com/xjamundx/eslint-plugin-promise
    'promise',
    // https://github.com/yannickcr/eslint-plugin-react
    'react',
    // https://github.com/evcohen/eslint-plugin-jsx-a11y
    'jsx-a11y',
    // https://github.com/amilajack/eslint-plugin-compat
    'compat',
    // https://github.com/jest-community/eslint-plugin-jest
    'jest'
    // https://github.com/prettier/eslint-plugin-prettier
    // 'prettier'
];

config.globals = {};

/**
 * Rules
 *
 * All rules can be configured with a "severity" number or string:
 *  0 = 'off'
 *  1 = 'warn'
 *  2 = 'error'
 *
 * @docs http://eslint.org/docs/rules/
 */
config.rules = {};

/**
 * Rules: Possible Errors
 *
 * @docs http://eslint.org/docs/rules/#possible-errors
 */
config.rules['possible-errors'] = {
    'comma-dangle': [2, 'never'],
    'no-cond-assign': 2,
    'no-console': [2, { allow: ['warn', 'error', 'info'] }],
    'no-constant-condition': 2,
    'no-control-regex': 2,
    'no-debugger': 2,
    'no-dupe-args': 2,
    'no-dupe-keys': 2,
    'no-duplicate-case': 2,
    'no-empty': 2,
    'no-empty-character-class': 2,
    'no-ex-assign': 2,
    'no-extra-boolean-cast': 2,
    'no-extra-parens': 0,
    'no-extra-semi': 2,
    'no-func-assign': 2,
    'no-inner-declarations': [2, 'functions'],
    'no-invalid-regexp': 2,
    'no-irregular-whitespace': 2,
    'no-negated-in-lhs': 2,
    'no-obj-calls': 2,
    'no-prototype-builtins': 0,
    'no-regex-spaces': 2,
    'no-sparse-arrays': 2,
    'no-unexpected-multiline': 0,
    'no-unreachable': 2,
    'no-unsafe-finally': 0,
    'use-isnan': 2,
    'valid-jsdoc': [
        2,
        {
            // prefer use of @param, @method, @returns, @class
            prefer: {
                arg: 'param',
                argument: 'param',
                function: 'method',
                func: 'method',
                return: 'returns',
                constructor: 'class',
                const: 'constant',
                defaultValue: 'default',
                property: 'prop',
                throws: 'exception',
                augments: 'extends',
                exception: 'throws',
                fires: 'emits',
                desc: '[description at top of block, not tag]',
                description: '[description at top of block, not tag]'
            },
            // requires a description, use regular expression .+
            matchDescription: '.+',
            // return: required if and only if the function or method has a return statement
            requireReturn: false,
            // return: require type
            requireReturnType: true,
            // return: require description
            requireReturnDescription: false,
            // param: require description
            requireParamDescription: true
        }
    ],
    'valid-typeof': 2
};

/**
 * Rules: Best Practices
 *
 * @docs http://eslint.org/docs/rules/#best-practices
 */
config.rules['best-practices'] = {
    'accessor-pairs': 0,
    'array-callback-return': 0,
    'block-scoped-var': 0,
    complexity: [0, 11],
    'consistent-return': 0,
    curly: [2, 'multi-line'],
    'default-case': 0,
    'dot-location': 0,
    'dot-notation': [0, { allowKeywords: true }],
    eqeqeq: 2,
    'guard-for-in': 0,
    'no-alert': 0,
    'no-caller': 2,
    'no-case-declarations': 0,
    'no-div-regex': 0,
    'no-else-return': 0,
    'no-empty-function': 0,
    'no-empty-pattern': 0,
    'no-eq-null': 0,
    'no-eval': 0,
    'no-extend-native': 0,
    'no-extra-bind': 0,
    'no-extra-label': 0,
    'no-fallthrough': 2,
    'no-floating-decimal': 0,
    'no-implicit-coercion': 0,
    'no-implicit-globals': 0,
    'no-implied-eval': 0,
    'no-invalid-this': 0,
    'no-iterator': 0,
    'no-labels': 0,
    'no-lone-blocks': 0,
    'no-loop-func': 0,
    'no-magic-numbers': 0,
    'no-multi-spaces': 2,
    'no-multi-str': 2,
    'no-native-reassign': 0,
    'no-new': 0,
    'no-new-func': 0,
    'no-new-wrappers': 0,
    'no-octal': 2,
    'no-octal-escape': 0,
    'no-param-reassign': 0,
    'no-proto': 0,
    'no-redeclare': 2,
    'no-return-assign': 0,
    'no-script-url': 0,
    'no-self-assign': 0,
    'no-self-compare': 0,
    'no-sequences': 0,
    'no-throw-literal': 0,
    'no-unmodified-loop-condition': 0,
    'no-unused-expressions': 0,
    'no-unused-labels': 0,
    'no-useless-call': 0,
    'no-useless-concat': 2,
    'no-useless-escape': 0,
    'no-void': 0,
    'no-warning-comments': 0,
    'no-with': 2,
    radix: 0,
    'vars-on-top': 0,
    'wrap-iife': 0,
    yoda: 0
};

/**
 * Rules: Variables
 *
 * @docs http://eslint.org/docs/rules/#variables
 */
config.rules['variables'] = {
    'init-declarations': 0,
    'no-catch-shadow': 0,
    'no-delete-var': 2,
    'no-label-var': 0,
    'no-restricted-globals': 0,
    'no-shadow': 0,
    'no-shadow-restricted-names': 0,
    'no-undef': 2,
    'no-undef-init': 0,
    'no-undefined': 0,
    'no-unused-vars': [
        2,
        {
            vars: 'all',
            args: 'none',
            ignoreRestSiblings: true
        }
    ],
    'no-use-before-define': 0
};

/**
 * Rules: Node.js and CommonJS
 *
 * @docs http://eslint.org/docs/rules/#nodejs-and-commonjs
 */
config.rules['nodejs-and-commonjs'] = {
    'callback-return': 0,
    'global-require': 0,
    'handle-callback-err': 0,
    'no-mixed-requires': 0,
    'no-new-require': 0,
    'no-path-concat': 2,
    'no-process-env': 0,
    'no-process-exit': 0,
    'no-restricted-modules': 0,
    'no-sync': 0
};

/**
 * Rules: Stylistic Issues
 *
 * @docs http://eslint.org/docs/rules/#stylistic-issues
 */
config.rules['stylistic'] = {
    'array-bracket-spacing': [2, 'always'],
    'block-spacing': 2,
    'brace-style': [2, 'stroustrup'],
    camelcase: [1, { properties: 'never' }],
    'comma-spacing': [2, { before: false, after: true }],
    'comma-style': 0,
    'computed-property-spacing': 0,
    'consistent-this': 0,
    'eol-last': 0,
    'func-call-spacing': 0,
    'func-names': 0,
    'func-style': 0,
    'id-blacklist': 0,
    'id-length': 0,
    'id-match': 0,
    // 'indent': [ 2, 4, {
    // 'SwitchCase': 1,
    // 'MemberExpression': 1
    // 'ignoredNodes': [
    //     'JSXElement',
    //     'JSXElement *',
    //     'JSXClosingElement',
    //     'JSXClosingElement *'
    // ]
    // }],
    'jsx-quotes': [2, 'prefer-single'],
    'key-spacing': [2, { afterColon: true, beforeColon: false }],
    'keyword-spacing': ['error', { before: true, after: true, overrides: {} }],
    'linebreak-style': [2, 'unix'],
    'lines-around-comment': 0,
    'max-depth': 0,
    'max-len': 0,
    'max-lines': 0,
    'max-nested-callbacks': 0,
    'max-params': 0,
    'max-statements': 0,
    'max-statements-per-line': 0,
    'new-cap': [2, { properties: false }],
    'new-parens': 0,
    'newline-after-var': 2,
    'newline-before-return': 2,
    'newline-per-chained-call': [2, { ignoreChainWithDepth: 2 }],
    'no-array-constructor': 0,
    'no-bitwise': 2,
    'no-continue': 0,
    'no-inline-comments': 0,
    'no-lonely-if': 0,
    'no-mixed-operators': 0,
    'no-mixed-spaces-and-tabs': 2,
    'no-multiple-empty-lines': [2, { max: 2 }],
    'no-negated-condition': 0,
    'no-nested-ternary': 0,
    'no-new-object': 0,
    'no-plusplus': 0,
    'no-restricted-syntax': 0,
    'no-tabs': 2,
    'no-ternary': 0,
    'no-trailing-spaces': 2,
    'no-underscore-dangle': 0,
    'no-unneeded-ternary': 0,
    'no-whitespace-before-property': 2,
    'object-curly-newline': 0,
    'object-curly-spacing': [2, 'always'],
    'object-property-newline': 0,
    'one-var': 0,
    'one-var-declaration-per-line': 0,
    'operator-assignment': 0,
    'operator-linebreak': 0,
    'padded-blocks': 2,
    'padding-line-between-statements': [
        2,
        {
            blankLine: 'always',
            prev: ['const', 'let', 'var'],
            next: '*'
        },
        {
            blankLine: 'any',
            prev: ['const', 'let', 'var'],
            next: ['const', 'let', 'var']
        }
    ],
    'quote-props': [2, 'as-needed'],
    quotes: [2, 'single', { avoidEscape: true, allowTemplateLiterals: true }],
    'require-jsdoc': 0,
    semi: [2, 'always'],
    'semi-spacing': [2, { before: false, after: true }],
    'sort-vars': 0,
    'space-before-blocks': [2, 'always'],
    'space-before-function-paren': [2, { anonymous: 'always', named: 'never', asyncArrow: 'always' }],
    'space-in-parens': [2, 'always'],
    'space-infix-ops': 2,
    'space-unary-ops': [2, { words: true, nonwords: false, overrides: { '!': false, '!!': false, '++': false } }],
    'spaced-comment': [
        2,
        'always',
        {
            exceptions: ['-', '+', '*', '!'],
            markers: ['>>excludeStart(', '>>excludeEnd(']
        }
    ],
    'unicode-bom': 0,
    'wrap-regex': 0
};

/**
 * Rules: ECMAScript 6
 *
 * @docs http://eslint.org/docs/rules/#ecmascript-6
 */
config.rules['ecmascript-6'] = {
    'arrow-body-style': 0,
    'arrow-parens': [2, 'always'],
    'arrow-spacing': 0,
    'constructor-super': 0,
    'generator-star-spacing': 0,
    'no-class-assign': 0,
    'no-confusing-arrow': [2, { allowParens: true }],
    'no-const-assign': 2,
    'no-dupe-class-members': 0,
    'no-duplicate-imports': 0,
    'no-new-symbol': 0,
    'no-restricted-imports': 0,
    'no-this-before-super': 0,
    'no-useless-computed-key': 0,
    'no-useless-constructor': 0,
    'no-useless-rename': 0,
    'no-var': 0,
    'object-shorthand': 0,
    'prefer-arrow-callback': 0,
    'prefer-const': 2,
    'prefer-reflect': 0,
    'prefer-rest-params': 0,
    'prefer-spread': 0,
    'prefer-template': 2,
    'require-yield': 0,
    'rest-spread-spacing': [2, 'never'],
    'sort-imports': 0,
    'template-curly-spacing': [2, 'always'],
    'yield-star-spacing': 0
};

/**
 * Rules: Babel
 *
 * @docs https://github.com/babel/eslint-plugin-babel
 */
config.rules['plugin:babel'] = {
    'babel/new-cap': 0,
    'babel/object-curly-spacing': 0,
    'babel/no-invalid-this': 2,
    'babel/semi': 2
};

/**
 * Rules: plugin:react
 *
 * @docs https://github.com/yannickcr/eslint-plugin-react/tree/master/docs/rules
 */
config.rules['plugin:react'] = {
    'react/boolean-prop-naming': 2,
    'react/button-has-type': 0,
    'react/default-props-match-prop-types': 2,
    'react/destructuring-assignment': 0,
    'react/display-name': 0,
    'react/forbid-component-props': 1,
    'react/forbid-dom-props': 2,
    'react/forbid-elements': 0,
    'react/forbid-foreign-prop-types': 2,
    'react/forbid-prop-types': 0,
    'react/jsx-boolean-value': [2, 'always', { "never": [ 'jsx', 'global' ] }],
    'react/jsx-child-element-spacing': 2,
    'react/jsx-closing-bracket-location': [2, 'line-aligned'],
    'react/jsx-closing-tag-location': 2,
    'react/jsx-curly-brace-presence': [2, 'never'],
    'react/jsx-curly-spacing': [
        1,
        {
            attributes: {
                allowMultiline: false
            },
            children: true,
            spacing: {
                objectLiterals: 'never'
            },
            when: 'always'
        }
    ],
    'react/jsx-equals-spacing': [2, 'never'],
    'react/jsx-filename-extension': 0,
    // 'react/jsx-first-prop-new-line': [ 2, 'multiline' ],
    'react/jsx-handler-names': 2,
    'react/jsx-indent': [2, 4],
    'react/jsx-indent-props': [2, 4],
    'react/jsx-key': 2,
    'react/jsx-max-depth': 0,
    'react/jsx-max-props-per-line': [2, { maximum: 2, when: 'always' }],
    'react/jsx-no-bind': [2, { ignoreRefs: true }],
    'react/jsx-no-comment-textnodes': 2,
    'react/jsx-no-duplicate-props': 2,
    'react/jsx-no-literals': 0,
    'react/jsx-no-target-blank': 2,
    'react/jsx-no-undef': 2,
    'react/jsx-one-expression-per-line': 0,
    'react/jsx-pascal-case': 2,
    'react/jsx-props-no-multi-spaces': 2,
    'react/jsx-sort-default-props': 2,
    'react/jsx-sort-props': 0,
    'react/jsx-tag-spacing': 2,
    'react/jsx-uses-react': 2,
    'react/jsx-uses-vars': 2,
    'react/jsx-wrap-multilines': [
        2,
        {
            declaration: 'parens-new-line',
            assignment: 'parens-new-line',
            return: 'parens-new-line',
            arrow: 'parens-new-line',
            condition: 'ignore',
            logical: 'ignore',
            prop: 'ignore'
        }
    ],
    'react/no-access-state-in-setstate': 2,
    'react/no-array-index-key': 0,
    'react/no-children-prop': 2,
    'react/no-danger': 0,
    'react/no-deprecated': 2,
    'react/no-danger-with-children': 2,
    'react/no-did-mount-set-state': 2,
    'react/no-did-update-set-state': 2,
    'react/no-direct-mutation-state': 2,
    'react/no-find-dom-node': 2,
    'react/no-is-mounted': 2,
    'react/no-multi-comp': 2,
    'react/no-redundant-should-component-update': 2,
    'react/no-render-return-value': 2,
    'react/no-set-state': 0,
    'react/no-this-in-sfc': 2,
    'react/no-string-refs': 2,
    'react/no-typos': 2,
    'react/no-unescaped-entities': 2,
    'react/no-unknown-property': [2, { ignore: ['jsx'] }],
    'react/no-unused-prop-types': 0,
    'react/no-unused-state': 2,
    'react/no-will-update-set-state': [2, 'disallow-in-func'],
    'react/prefer-es6-class': [2, 'always'],
    'react/prefer-stateless-function': 2,
    'react/prop-types': 0,
    'react/require-default-props': 0,
    'react/react-in-jsx-scope': 2,
    'react/require-extension': 0,
    'react/require-optimization': 0,
    'react/require-render-return': 2,
    'react/self-closing-comp': 2,
    'react/sort-comp': 2,
    'react/sort-prop-types': 2,
    'react/style-prop-object': 2,
    'react/void-dom-elements-no-children': 2,
    'react/wrap-multilines': 0
};

/**
 * Rules: plugin: jsx-a11y
 * @docs https://github.com/evcohen/eslint-plugin-jsx-a11y
 */
config.rules['plugin:jsx-a11y'] = {
    'jsx-a11y/anchor-has-content': 2,
    'jsx-a11y/anchor-is-valid': ['off'],
    'jsx-a11y/label-has-for': [
        2,
        {
            components: ['Label'],
            required: {
                some: ['nesting', 'id']
            }
        }
    ],
    'jsx-a11y/no-noninteractive-tabindex': 0
};

config.rules[ 'plugin:jest' ] = {
    'jest/no-disabled-tests': 1,
    'jest/no-focused-tests': 2,
    'jest/no-identical-title': 2,
    'jest/prefer-to-have-length': 1,
    'jest/valid-expect': 2
}

// config.rules[ "prettier/prettier" ] = "error";

config.rules = Object.keys(config.rules).reduce((rules, section) => {
    Object.assign(rules, config.rules[section]);

    return rules;
}, {});

module.exports = config;
