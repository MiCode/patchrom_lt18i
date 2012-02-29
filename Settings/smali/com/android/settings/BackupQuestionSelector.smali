.class public Lcom/android/settings/BackupQuestionSelector;
.super Landroid/app/Activity;
.source "BackupQuestionSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnContinue:Landroid/widget/Button;

.field private mListView:Landroid/widget/ListView;

.field private mQuestionSelected:I

.field private mQuestions:[Ljava/lang/String;

.field private mShownDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/BackupQuestionSelector;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/settings/BackupQuestionSelector;->mQuestionSelected:I

    return p1
.end method

.method private populateList()V
    .locals 4

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/settings/BackupQuestionSelector;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 159
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/BackupQuestionSelector;->mQuestions:[Ljava/lang/String;

    .line 160
    iget-object v1, p0, Lcom/android/settings/BackupQuestionSelector;->mQuestions:[Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x10400c3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 161
    iget-object v1, p0, Lcom/android/settings/BackupQuestionSelector;->mQuestions:[Ljava/lang/String;

    const/4 v2, 0x1

    const v3, 0x10400c4

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 162
    iget-object v1, p0, Lcom/android/settings/BackupQuestionSelector;->mQuestions:[Ljava/lang/String;

    const/4 v2, 0x2

    const v3, 0x10400c5

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 163
    iget-object v1, p0, Lcom/android/settings/BackupQuestionSelector;->mQuestions:[Ljava/lang/String;

    const/4 v2, 0x3

    const v3, 0x10400c6

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 166
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f030002

    iget-object v3, p0, Lcom/android/settings/BackupQuestionSelector;->mQuestions:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/settings/BackupQuestionSelector;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 168
    iget-object v1, p0, Lcom/android/settings/BackupQuestionSelector;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/BackupQuestionSelector;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 209
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 211
    packed-switch p1, :pswitch_data_0

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 213
    :pswitch_0
    if-ne p2, v0, :cond_1

    .line 214
    invoke-virtual {p0, v0}, Lcom/android/settings/BackupQuestionSelector;->setResult(I)V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/BackupQuestionSelector;->finish()V

    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/BackupQuestionSelector;->setResult(I)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/BackupQuestionSelector;->finish()V

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/settings/BackupQuestionSelector;->mBtnContinue:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 191
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 192
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.SetBackupQuestion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v1, "question_id"

    iget v2, p0, Lcom/android/settings/BackupQuestionSelector;->mQuestionSelected:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BackupQuestionSelector;->startActivityForResult(Landroid/content/Intent;I)V

    .line 201
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/android/settings/BackupQuestionSelector;->mBtnCancel:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 197
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/BackupQuestionSelector;->setResult(I)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/BackupQuestionSelector;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/android/settings/BackupQuestionSelector;->setContentView(I)V

    .line 86
    const v1, 0x7f08000c

    invoke-virtual {p0, v1}, Lcom/android/settings/BackupQuestionSelector;->setTitle(I)V

    .line 88
    const v1, 0x7f0b0003

    invoke-virtual {p0, v1}, Lcom/android/settings/BackupQuestionSelector;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/BackupQuestionSelector;->mListView:Landroid/widget/ListView;

    .line 89
    iget-object v1, p0, Lcom/android/settings/BackupQuestionSelector;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 90
    new-instance v1, Lcom/android/internal/widget/BackupQuestionUtils;

    invoke-virtual {p0}, Lcom/android/settings/BackupQuestionSelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/BackupQuestionUtils;-><init>(Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/settings/BackupQuestionSelector;->mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

    .line 92
    const v1, 0x7f0b0002

    invoke-virtual {p0, v1}, Lcom/android/settings/BackupQuestionSelector;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/BackupQuestionSelector;->mBtnContinue:Landroid/widget/Button;

    .line 93
    const v1, 0x7f0b0001

    invoke-virtual {p0, v1}, Lcom/android/settings/BackupQuestionSelector;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/BackupQuestionSelector;->mBtnCancel:Landroid/widget/Button;

    .line 94
    iget-object v1, p0, Lcom/android/settings/BackupQuestionSelector;->mBtnContinue:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/BackupQuestionSelector;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v1, p0, Lcom/android/settings/BackupQuestionSelector;->mBtnContinue:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Lcom/android/settings/BackupQuestionSelector;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    iget-object v1, p0, Lcom/android/settings/BackupQuestionSelector;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings/BackupQuestionSelector$1;

    invoke-direct {v2, p0}, Lcom/android/settings/BackupQuestionSelector$1;-><init>(Lcom/android/settings/BackupQuestionSelector;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    invoke-direct {p0}, Lcom/android/settings/BackupQuestionSelector;->populateList()V

    .line 112
    if-nez p1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/android/settings/BackupQuestionSelector;->mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/BackupQuestionUtils;->getSelectedQuestion(I)I

    move-result v0

    .line 115
    .local v0, questionId:I
    iput-boolean v4, p0, Lcom/android/settings/BackupQuestionSelector;->mShownDialog:Z

    .line 120
    :goto_0
    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x1

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/settings/BackupQuestionSelector;->mListView:Landroid/widget/ListView;

    sub-int v2, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 124
    iput v0, p0, Lcom/android/settings/BackupQuestionSelector;->mQuestionSelected:I

    .line 125
    return-void

    .line 117
    .end local v0           #questionId:I
    :cond_1
    const-string v1, "selectedQuestion"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 118
    .restart local v0       #questionId:I
    iput-boolean v3, p0, Lcom/android/settings/BackupQuestionSelector;->mShownDialog:Z

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x4

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, dialog:Landroid/app/Dialog;
    if-nez p1, :cond_0

    .line 140
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a001b

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f08000b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08000e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 149
    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 80
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 179
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 180
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 130
    iget-boolean v0, p0, Lcom/android/settings/BackupQuestionSelector;->mShownDialog:Z

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/BackupQuestionSelector;->showDialog(I)V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/BackupQuestionSelector;->mShownDialog:Z

    .line 134
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 229
    const-string v0, "selectedQuestion"

    iget v1, p0, Lcom/android/settings/BackupQuestionSelector;->mQuestionSelected:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    return-void
.end method
