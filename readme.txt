This is a module template that can be adopted according to the needs of the programme.
It can be updated remotely or by branching the template.

The common phases of this are as follows:
1. Module Team branch a specific year module: ex. ML-2025 -> ML-2026-MT-Draft
2. Module Team collaborate on their branch, further develops the contents and enhances the module's flaws.
3. Module Team declares their branch ready for review by the Programme Leader(PL): ML-2026-MT-Draft -> ML-2026-MT-Draft-Under-Review-PL
4. Programme Leader may ask for some amendments, and then  ML-2026-MT-Draft-Under-Review-PL go back to ML-2026-MT-Draft
5. Module Team is confident they have made the required changes, PL approves changes, and the module will have the tag ML-2026-MT-Draft-Approved-PL
6. Module Team forwards a push request for the module to DES ML-2026-MT-Draft-Approved-PL -> ML-2026-MT-Draft-Under-Review-DES
7. DES review and ask for some changes, if any, then once they are satisfied with the results, the module has the tag ML-2026-MT-Approved-DES
8. DES then merge the new branch, which becomes ML-2026
9. DES makes the new branch live by merging ML-2026 into the ML main branch, which will be linked up to live by Minerva.

The main webiste of the book will exist in:
https://msc-in-ai-programme.github.io/Module1/

To build :              jupyter-book build . 
To create the site:     ghp-import -n -p -f _build/html
in both cases the terminal must be at the root of the project

In some cases, when you want to clean build and deploy then you can do: 
    jupyter-book clean . --all && jupyter-book build . && ghp-import -n -p -f _build/html
    jupyter-book clean . --all && jupyter-book build . && python3 -m http.server -d _build/html




For rapid testing: jupyter-book build . && python -m http.server --directory _build/html
then go http://localhost:8000/markdown-notebooks.html


better to:
pip install watchdog
    chmod +x serve.sh
    ./serve.sh

then anytime you change and save the localhost will be automatically updated.
to kill all 8000 ports do: 
    lsof -ti :8000 | xargs kill
