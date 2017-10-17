# Public domain - not a license per se, but you need to understand the term
  * Do whatever you want, no need to tell anyone about it
  * This is where works end up when their copyright term expires
  * In some countries (ex: USA), work done for the government is in the public domain

# GPL [v2]
  * Source code must be made available
  * Derivative works must be GPL too
  * Use in commercial software - allowed, but every other component must be made GPL too
  * Some call it a plague - because it "infects" anything it touches (i.e. turns into GPL) in order to propagate freedoms
  * Exceptions may apply if the license has a specific clause for that. This is relevant for low-level libraries. For example, if there were no exception for libgcc, one would not be able to use GCC to create non-GPL software.

# GPL v3
  * Tivoization - TiVo uses a modified Linux kernel, the code is available, but they use hardware checks to prevent the system from running others' binaries
    - Reactions are different. RMS says this is bad, Linus is OK with it, YMMV.
  * GPL v3 includes a special clause that prohibits tivoization

# LGPL (lesser GPL)
  * A permissive version of the GPL
  * Use in commercial software - yes, you can link proprietary code to LGPL code, without turning the whole thing into LGPL. This is what makes it permissive

# AGPL (Affero GPL)
  * Created to handle an edge case of the GPL - a company uses modified GPL software on their server
  * The software is not distributed per se, people see just the output of said software via HTTP, for example
  * The license says that anyone using the system over a network must be able to obtain the code

# BSD, MIT, Apache - they are different, but within the scope of this article - they are similar
  * Use in commercial software is allowed, you don't have to change the license of the whole system (unlike in GPL)
  * Derivative works must include a copy of the license
  * They differ in terms of whether you can leave references to the original authors and how to do that
  * No plague element here - you can take the module and turn it into a proprietary application.

# Creative commons
  * A set of elements that can be combined to build other licenses
    - by, attribution - do what you want, as long as there's a reference to the original author
    - nc, noncommercial - do whatever you want, as long as it is not for commercial purposes
    - nd, no derivatives - do whatever you want, as long as you don't derive works from it
    - sa, share alike - the derived work must be distributed with the same license as the original

  * Combine these elements to tweak the license to your needs. For example, if you want to make something and make sure the world knows it is you and you don't want it to be used for commercial purposes, the result is cc-by-nc (creative commons, attribution, non-commercial)

# Moral aspects
  * GPL aims to protect freedom by forcing freedom upon anyone else who uses GPL. If you write GPL code, all the derivatives will be GPL and you'll always be able to reap the benefits of others' work based on your work.
  * BSD folks see it differently - freedom implies the freedom to allow others to take my code and do whatever they want. If I write BSD code, someone can derive and build something else - but this derivative work may not be shown to the world. The derivator will be the sole benefactor, they took other people's contributions but did not give anything back.
