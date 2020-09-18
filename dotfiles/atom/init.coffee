atom.commands.add 'atom-text-editor', 'custom:wrap-in-code-block': ->
    return unless editor = atom.workspace.getActiveTextEditor()

    editor = atom.workspace.getActiveTextEditor()
    for selection in editor.getSelections()
        textToWrap = selection.getText().trim()
        selection.insertText("```\n#{textToWrap}\n```\n")
