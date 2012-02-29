.class public Lcom/android/settings/SetBackupQuestion;
.super Landroid/app/Activity;
.source "SetBackupQuestion.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SetBackupQuestion$SaveQuestionAnswerPairTask;
    }
.end annotation


# instance fields
.field private mAnswerText:Landroid/widget/EditText;

.field private mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

.field private mButtonBar:Landroid/view/View;

.field private mFooterCancelButton:Landroid/widget/Button;

.field private mFooterConfirmButton:Landroid/widget/TextView;

.field private mKeyboardOpen:Z

.field private mQuestion:I

.field private mQuestionText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SetBackupQuestion;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SetBackupQuestion;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/settings/SetBackupQuestion;->mQuestion:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/SetBackupQuestion;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SetBackupQuestion;)Lcom/android/internal/widget/BackupQuestionUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion;->mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

    return-object v0
.end method

.method private queryKeyboardOpen()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 234
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private saveAnswerAndFinish()V
    .locals 2

    .prologue
    .line 225
    new-instance v0, Lcom/android/settings/SetBackupQuestion$SaveQuestionAnswerPairTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SetBackupQuestion$SaveQuestionAnswerPairTask;-><init>(Lcom/android/settings/SetBackupQuestion;Lcom/android/settings/SetBackupQuestion$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/SetBackupQuestion$SaveQuestionAnswerPairTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 226
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 240
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 245
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/android/settings/SetBackupQuestion;->saveAnswerAndFinish()V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion;->mFooterCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SetBackupQuestion;->setResult(I)V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    new-instance v2, Lcom/android/internal/widget/BackupQuestionUtils;

    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/BackupQuestionUtils;-><init>(Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

    .line 93
    const v2, 0x7f080008

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->setTitle(I)V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/SetBackupQuestion;->queryKeyboardOpen()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SetBackupQuestion;->mKeyboardOpen:Z

    .line 97
    if-nez p1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 99
    .local v1, launchIntent:Landroid/content/Intent;
    const-string v2, "question_id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SetBackupQuestion;->mQuestion:I

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->setupViews()V

    .line 101
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 115
    .end local v1           #launchIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string v2, "questionId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SetBackupQuestion;->mQuestion:I

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->setupViews()V

    .line 107
    const-string v2, "chosenAnswer"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, answer:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 109
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_1
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    move v3, v4

    .line 113
    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 201
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SetBackupQuestion;->setResult(I)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->finish()V

    .line 205
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 207
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 120
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 218
    const-string v0, "questionId"

    iget v1, p0, Lcom/android/settings/SetBackupQuestion;->mQuestion:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    const-string v0, "chosenAnswer"

    iget-object v1, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 250
    return-void

    .line 248
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setupViews()V
    .locals 4

    .prologue
    .line 123
    const v2, 0x7f030040

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->setContentView(I)V

    .line 125
    const v2, 0x7f0b00bf

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mQuestionText:Landroid/widget/TextView;

    .line 127
    const/4 v1, 0x0

    .line 128
    .local v1, question:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SetBackupQuestion;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    .local v0, context:Landroid/content/Context;
    iget v2, p0, Lcom/android/settings/SetBackupQuestion;->mQuestion:I

    packed-switch v2, :pswitch_data_0

    .line 145
    :goto_0
    if-eqz v1, :cond_0

    .line 146
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mQuestionText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_0
    const v2, 0x7f0b00c3

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    .line 151
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mFooterConfirmButton:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v2, 0x7f0b00c2

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mFooterCancelButton:Landroid/widget/Button;

    .line 155
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mFooterCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v2, 0x7f0b00be

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mButtonBar:Landroid/view/View;

    .line 159
    const v2, 0x7f0b00c0

    invoke-virtual {p0, v2}, Lcom/android/settings/SetBackupQuestion;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    .line 160
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/SetBackupQuestion$1;

    invoke-direct {v3, p0}, Lcom/android/settings/SetBackupQuestion$1;-><init>(Lcom/android/settings/SetBackupQuestion;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 178
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 180
    iget-boolean v2, p0, Lcom/android/settings/SetBackupQuestion;->mKeyboardOpen:Z

    if-eqz v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 182
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 186
    :goto_1
    return-void

    .line 132
    :pswitch_0
    const v2, 0x10400c3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    goto :goto_0

    .line 135
    :pswitch_1
    const v2, 0x10400c4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    goto :goto_0

    .line 138
    :pswitch_2
    const v2, 0x10400c5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    goto :goto_0

    .line 141
    :pswitch_3
    const v2, 0x10400c6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SetBackupQuestion;->mAnswerText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_1

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
