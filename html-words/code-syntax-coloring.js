#!/usr/bin/env node

function codeColoring(text) {
    var code = new Array(
        { search: / /g, replace: ' ' },
        { search: /\</g, replace: '<' },
        { search: /\>/g, replace: '>' },
        { search: /\n/g, replace: '<br />' },
        { search: /\"(.*?)\"/g, replace: '<span class="violet">"$1"</span>' },
        { search: /\'(.*?)\'/g, replace: '<span class="red">\'$1\'</span>' },
        { search: /[^a-z:]\/\/[\s]*([a-zA-Z0-9$().;:&,=' ]{1,})/g, replace: '<span class="gray">//$1</span>' },
        { search: /\bvar\b/g, replace: '<span class="blue">var</span>' },
        { search: /[^\[]\bif\b/g, replace: '<span class="blue">if</span>' },
        { search: /\belse\b/g, replace: '<span class="blue">else</span>' },
        { search: /\btrue\b/g, replace: '<span class="blue">true</span>' },
        { search: /\bfalse\b/g, replace: '<span class="blue">false</span>' },
        { search: /\barray\b/g, replace: '<span class="blue">array</span>' },
        { search: /\bfunction\b/g, replace: '<span class="blue">function</span>' },
        { search: /[^$]\bthis\b/g, replace: '<span class="yellow">this</span>' },
        { search: /\breturn\b/g, replace: '<span class="blue">return</span>' },
        { search: /\bfor\b/g, replace: '<span class="blue">for</span>' },
        { search: /\bforeach\b/g, replace: '<span class="blue">foreach</span>' },
        { search: /\bwhile\b/g, replace: '<span class="blue">while</span>' },
        { search: /\bas\b/g, replace: '<span class="blue">as</span>' },
        { search: /\$([a-z]{1,})/g, replace: '<span class="green">$$1</span>' },
        { search: /[^:a-z]([0-9]{1,})/g, replace: '<span class="red">$1</span>' },
        { search: /[<]{4}!--([\s\S]*(.*?))--[>]{4}/mg, replace: '<span class="green"><!--$1--></span>' }
    );

    for (i = 0; i < code.length; i++) {
        text = text.replace(code[i].search, code[i].replace);
    }
    return text;
}

console.log(codeColoring('for(let x=0;x<1;x++){console.log("A")}'));
