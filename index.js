module.exports = app => {
    app.log('app started')

    app.on('issues.opened', async context => {
        app.log('issues opened')
        const issueComment = context.issue({ body: 'Thanks for opening this issue!' })
        return context.github.issues.createComment(issueComment)
    })
}
