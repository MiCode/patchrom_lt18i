.class Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;
.super Ljava/lang/Object;
.source "MiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackLongPressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

.field private zDialogResult:Z

.field private zWin:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->zWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->zDialogResult:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->zDialogResult:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->zDialogResult:Z

    return p1
.end method

.method private showHint()V
    .locals 4

    .prologue
    .line 157
    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressHintDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressHintDialog;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/content/Context;)V

    .line 159
    .local v0, dialog:Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v2, 0x609006f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 161
    const/4 v2, -0x2

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v3, 0x1040009

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 165
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v3, 0x1040013

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable$1;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 174
    new-instance v1, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable$2;-><init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 184
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 185
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    move-object v11, v0

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mBackLongPressed:Z

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    move-object v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->zWin:Landroid/view/WindowManagerPolicy$WindowState;

    move-object v11, v0

    if-nez v11, :cond_0

    .line 102
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->showHint()V

    .line 153
    :goto_0
    return-void

    .line 107
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->zWin:Landroid/view/WindowManagerPolicy$WindowState;

    move-object v11, v0

    invoke-interface {v11}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget-object v8, v11, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 108
    .local v8, packageName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 110
    .local v10, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->zWin:Landroid/view/WindowManagerPolicy$WindowState;

    move-object v11, v0

    invoke-interface {v11}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 111
    .local v4, className:Ljava/lang/String;
    const/16 v11, 0x2f

    invoke-virtual {v4, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 112
    .local v7, index:I
    if-ltz v7, :cond_1

    .line 113
    new-instance v5, Landroid/content/ComponentName;

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v8, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .local v5, componentName:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    move-object v11, v0

    iget-object v11, v11, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 120
    .local v9, pm:Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v9, v5, v11}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 121
    .local v1, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v1, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 123
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 124
    const/4 v11, 0x0

    invoke-virtual {v9, v8, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 125
    .local v3, applicationInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 134
    .end local v1           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v5           #componentName:Landroid/content/ComponentName;
    .end local v9           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->zWin:Landroid/view/WindowManagerPolicy$WindowState;

    move-object v12, v0

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget-object v12, v12, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v11, v12, v13, v14}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    move-object v11, v0

    iget-object v11, v11, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 143
    .local v2, am:Landroid/app/ActivityManager;
    invoke-virtual {v2, v8}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    move-object v11, v0

    iget-object v11, v11, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v13, 0x6090070

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    move-object/from16 v16, v10

    :goto_3
    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 136
    .end local v2           #am:Landroid/app/ActivityManager;
    :catch_0
    move-exception v11

    move-object v6, v11

    .line 137
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v2       #am:Landroid/app/ActivityManager;
    :cond_2
    move-object/from16 v16, v8

    .line 146
    goto :goto_3

    .line 128
    .end local v2           #am:Landroid/app/ActivityManager;
    .restart local v5       #componentName:Landroid/content/ComponentName;
    .restart local v9       #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v11

    goto :goto_1
.end method

.method public setTarget(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .parameter "win"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->zWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 95
    return-void
.end method
