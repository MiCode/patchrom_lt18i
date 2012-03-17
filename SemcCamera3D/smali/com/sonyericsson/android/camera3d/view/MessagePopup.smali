.class public Lcom/sonyericsson/android/camera3d/view/MessagePopup;
.super Ljava/lang/Object;
.source "MessagePopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/view/MessagePopup$ZoomMessageHandler;,
        Lcom/sonyericsson/android/camera3d/view/MessagePopup$UncancelableDialog;,
        Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnKeyWrapSelectionShareListener;,
        Lcom/sonyericsson/android/camera3d/view/MessagePopup$KeyEventKiller;,
        Lcom/sonyericsson/android/camera3d/view/MessagePopup$RejectMenuKeyEvent;,
        Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelWrapSelectionShareListener;,
        Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapSelectionShareListener;,
        Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelWrapErrorExitListener;,
        Lcom/sonyericsson/android/camera3d/view/MessagePopup$ShowOkListener;,
        Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelWrapOkCancelListener;,
        Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapOkCancelListener;,
        Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapListener;,
        Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelErrorOkListenerImpl;,
        Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickErrorOkListenerImpl;
    }
.end annotation


# static fields
.field public static final NO_TITLE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MessagePopup"


# instance fields
.field private mDeviceErrorPopup:Landroid/app/AlertDialog;

.field private mDialogOk:Landroid/app/AlertDialog;

.field private mDialogOkCancel:Landroid/app/AlertDialog;

.field private mExitMethod:Landroid/content/DialogInterface$OnCancelListener;

.field private mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

.field private final mKeyEventKiller:Landroid/content/DialogInterface$OnKeyListener;

.field private mMemoryErrorPopup:Landroid/app/AlertDialog;

.field private mRotatableDialogOkCancel:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

.field private mSensorOrientation:I

.field private mShareSelection:Landroid/app/AlertDialog;

.field private mStoreProgressDialog:Landroid/app/AlertDialog;

.field private mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

.field private mToast:Landroid/widget/Toast;

.field private mZoomMessageHandler:Landroid/os/Handler;

.field private mZoomMessageTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

.field private mZoomToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/ExtendedActivity;)V
    .locals 2
    .parameter "act"

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mToast:Landroid/widget/Toast;

    .line 69
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomToast:Landroid/widget/Toast;

    .line 72
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomMessageTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    .line 75
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$ZoomMessageHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$ZoomMessageHandler;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomMessageHandler:Landroid/os/Handler;

    .line 84
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOk:Landroid/app/AlertDialog;

    .line 87
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mRotatableDialogOkCancel:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    .line 96
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOkCancel:Landroid/app/AlertDialog;

    .line 99
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mShareSelection:Landroid/app/AlertDialog;

    .line 101
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mSensorOrientation:I

    .line 359
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$KeyEventKiller;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$KeyEventKiller;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mKeyEventKiller:Landroid/content/DialogInterface$OnKeyListener;

    .line 106
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    instance-of v0, v0, Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    check-cast v0, Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->setErrorExit(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 110
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mMemoryErrorPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/view/MessagePopup;)Lcom/sonyericsson/android/camera3d/ExtendedActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOkCancel:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOk:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mShareSelection:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera3d/view/MessagePopup;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mToast:Landroid/widget/Toast;

    return-object p1
.end method


# virtual methods
.method public hideZoomMessage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 744
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 746
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomToast:Landroid/widget/Toast;

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomMessageTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    if-eqz v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomMessageTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SelfTimer;->cancel()V

    .line 750
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomMessageTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    .line 752
    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mToast:Landroid/widget/Toast;

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 118
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomToast:Landroid/widget/Toast;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomMessageTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomMessageTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SelfTimer;->cancel()V

    .line 122
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomMessageTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mMemoryErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mMemoryErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 127
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mMemoryErrorPopup:Landroid/app/AlertDialog;

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDeviceErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDeviceErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 131
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDeviceErrorPopup:Landroid/app/AlertDialog;

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOk:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOk:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 135
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOk:Landroid/app/AlertDialog;

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mRotatableDialogOkCancel:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    if-eqz v0, :cond_5

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mRotatableDialogOkCancel:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->dismiss()V

    .line 139
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mRotatableDialogOkCancel:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    .line 141
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mShareSelection:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mShareSelection:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 143
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mShareSelection:Landroid/app/AlertDialog;

    .line 145
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOkCancel:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOkCancel:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 147
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOkCancel:Landroid/app/AlertDialog;

    .line 149
    :cond_7
    return-void
.end method

.method public releaseContext()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 155
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 159
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    .line 161
    :cond_1
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    .line 162
    return-void
.end method

.method public setErrorExit(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExitMethod:Landroid/content/DialogInterface$OnCancelListener;

    .line 171
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 775
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mSensorOrientation:I

    .line 776
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mRotatableDialogOkCancel:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mRotatableDialogOkCancel:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->setSensorOrientation(I)V

    .line 779
    :cond_0
    return-void
.end method

.method public showErrorExit(IIZ)Landroid/app/Dialog;
    .locals 3
    .parameter "msg"
    .parameter "title"
    .parameter "isVisibleIcon"

    .prologue
    .line 584
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDeviceErrorPopup:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    if-eqz v1, :cond_1

    .line 585
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 586
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 587
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 588
    if-eqz p3, :cond_0

    .line 589
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 591
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 592
    new-instance v1, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelWrapErrorExitListener;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExitMethod:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelWrapErrorExitListener;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 593
    new-instance v1, Lcom/sonyericsson/android/camera3d/view/MessagePopup$RejectMenuKeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$RejectMenuKeyEvent;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 594
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 595
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDeviceErrorPopup:Landroid/app/AlertDialog;

    .line 597
    .end local v0           #ad:Landroid/app/AlertDialog$Builder;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    if-eqz v1, :cond_2

    .line 598
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->disableAutoOffTimer()V

    .line 602
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDeviceErrorPopup:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public showErrorOk(IIZ)Landroid/app/Dialog;
    .locals 5
    .parameter "msg"
    .parameter "title"
    .parameter "isVisibleIcon"

    .prologue
    const/4 v3, 0x0

    .line 547
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    if-eqz v2, :cond_3

    .line 548
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    check-cast v2, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v3

    .line 574
    :goto_0
    return-object v2

    .line 553
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mMemoryErrorPopup:Landroid/app/AlertDialog;

    if-nez v2, :cond_2

    .line 554
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 555
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 556
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 557
    if-eqz p3, :cond_1

    .line 558
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 560
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 561
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0118

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 563
    .local v1, okMsg:Ljava/lang/CharSequence;
    new-instance v2, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapListener;

    new-instance v4, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickErrorOkListenerImpl;

    invoke-direct {v4, p0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickErrorOkListenerImpl;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;)V

    invoke-direct {v2, p0, v4}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapListener;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 565
    new-instance v2, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelErrorOkListenerImpl;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelErrorOkListenerImpl;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 566
    new-instance v2, Lcom/sonyericsson/android/camera3d/view/MessagePopup$RejectMenuKeyEvent;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$RejectMenuKeyEvent;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 567
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 568
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mMemoryErrorPopup:Landroid/app/AlertDialog;

    .line 570
    .end local v0           #ad:Landroid/app/AlertDialog$Builder;
    .end local v1           #okMsg:Ljava/lang/CharSequence;
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    check-cast v2, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->disableAutoOffTimer()V

    .line 574
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mMemoryErrorPopup:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public showErrorUncancelable(IIZ)Lcom/sonyericsson/android/camera3d/view/MessagePopup$UncancelableDialog;
    .locals 3
    .parameter "msg"
    .parameter "title"
    .parameter "isVisibleIcon"

    .prologue
    const/4 v1, 0x0

    .line 614
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    if-eqz v2, :cond_1

    .line 615
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$UncancelableDialog;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$UncancelableDialog;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/content/Context;)V

    .line 616
    .local v0, ad:Lcom/sonyericsson/android/camera3d/view/MessagePopup$UncancelableDialog;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$UncancelableDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$UncancelableDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 618
    if-eqz p3, :cond_0

    .line 619
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$UncancelableDialog;->setIcon(I)V

    .line 621
    :cond_0
    new-instance v2, Lcom/sonyericsson/android/camera3d/view/MessagePopup$RejectMenuKeyEvent;

    invoke-direct {v2, v1}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$RejectMenuKeyEvent;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;)V

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$UncancelableDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 622
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$UncancelableDialog;->show()V

    .line 627
    .end local v0           #ad:Lcom/sonyericsson/android/camera3d/view/MessagePopup$UncancelableDialog;
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public showMessage(II)V
    .locals 1
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mToast:Landroid/widget/Toast;

    .line 390
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 392
    :cond_1
    return-void
.end method

.method public showMessageOnUiThread(II)V
    .locals 2
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    new-instance v1, Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;II)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 410
    return-void
.end method

.method public showOk(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 5
    .parameter "msg"
    .parameter "title"
    .parameter "isVisibleIcon"
    .parameter "ok"
    .parameter "okListener"
    .parameter "dismissListener"

    .prologue
    .line 469
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOk:Landroid/app/AlertDialog;

    if-nez v2, :cond_1

    .line 470
    new-instance v1, Lcom/sonyericsson/android/camera3d/view/MessagePopup$ShowOkListener;

    invoke-direct {v1, p0, p5, p6}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$ShowOkListener;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 471
    .local v1, listener:Lcom/sonyericsson/android/camera3d/view/MessagePopup$ShowOkListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 472
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 473
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 474
    if-eqz p3, :cond_0

    .line 475
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 477
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 478
    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 479
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 480
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOk:Landroid/app/AlertDialog;

    .line 481
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOk:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 482
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOk:Landroid/app/AlertDialog;

    new-instance v3, Lcom/sonyericsson/android/camera3d/view/MessagePopup$RejectMenuKeyEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$RejectMenuKeyEvent;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 484
    .end local v0           #ad:Landroid/app/AlertDialog$Builder;
    .end local v1           #listener:Lcom/sonyericsson/android/camera3d/view/MessagePopup$ShowOkListener;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOk:Landroid/app/AlertDialog;

    return-object v2
.end method

.method public showOkCancelReopenable(IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 2
    .parameter "msg"
    .parameter "ok"
    .parameter "can"
    .parameter "okListener"
    .parameter "cancelClickListener"
    .parameter "cancelListener"

    .prologue
    .line 644
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOkCancel:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 645
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOkCancel:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 646
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOkCancel:Landroid/app/AlertDialog;

    .line 648
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 649
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 650
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 651
    new-instance v1, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapOkCancelListener;

    invoke-direct {v1, p0, p4}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapOkCancelListener;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 652
    new-instance v1, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapOkCancelListener;

    invoke-direct {v1, p0, p5}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapOkCancelListener;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 653
    new-instance v1, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelWrapOkCancelListener;

    invoke-direct {v1, p0, p6}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelWrapOkCancelListener;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 654
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 655
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOkCancel:Landroid/app/AlertDialog;

    .line 656
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mDialogOkCancel:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public showOkCancelReopenable(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/android/camera3d/view/RotatableDialog;
    .locals 3
    .parameter "msg"
    .parameter "title"
    .parameter "isVisibleIcon"
    .parameter "ok"
    .parameter "can"
    .parameter "okListener"
    .parameter "cancelClickListener"
    .parameter "cancelListener"

    .prologue
    const/4 v1, 0x0

    .line 427
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mRotatableDialogOkCancel:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    if-eqz v2, :cond_0

    .line 428
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mRotatableDialogOkCancel:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->dismiss()V

    .line 429
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mRotatableDialogOkCancel:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    .line 432
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 433
    .local v0, inflater:Landroid/view/LayoutInflater;
    if-nez v0, :cond_1

    .line 455
    :goto_0
    return-object v1

    .line 436
    :cond_1
    const v2, 0x7f030014

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mRotatableDialogOkCancel:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    .line 438
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mRotatableDialogOkCancel:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->setMessage(I)V

    .line 439
    const/4 v1, -0x1

    if-eq v1, p2, :cond_2

    .line 440
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mRotatableDialogOkCancel:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->setTitle(I)V

    .line 441
    if-eqz p3, :cond_2

    .line 442
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mRotatableDialogOkCancel:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->showIcon()V

    .line 445
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mRotatableDialogOkCancel:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->setCancelable(Z)V

    .line 446
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mRotatableDialogOkCancel:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapOkCancelListener;

    invoke-direct {v2, p0, p6}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapOkCancelListener;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, p4, v2}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 448
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mRotatableDialogOkCancel:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapOkCancelListener;

    invoke-direct {v2, p0, p7}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapOkCancelListener;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, p5, v2}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 450
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mRotatableDialogOkCancel:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelWrapOkCancelListener;

    invoke-direct {v2, p0, p8}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelWrapOkCancelListener;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 452
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mRotatableDialogOkCancel:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mKeyEventKiller:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 453
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mRotatableDialogOkCancel:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mSensorOrientation:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->setSensorOrientation(I)V

    .line 454
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mRotatableDialogOkCancel:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/view/RotatableDialog;->show()V

    .line 455
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mRotatableDialogOkCancel:Lcom/sonyericsson/android/camera3d/view/RotatableDialog;

    goto :goto_0
.end method

.method public showShareSelectionReopenable(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;)Landroid/app/Dialog;
    .locals 4
    .parameter "selectListener"
    .parameter "cancelListener"
    .parameter "listAdapter"

    .prologue
    const/4 v3, 0x0

    .line 670
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mShareSelection:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 671
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mShareSelection:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 672
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mShareSelection:Landroid/app/AlertDialog;

    .line 675
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 676
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    const v2, 0x7f0c007c

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 677
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 678
    new-instance v1, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapSelectionShareListener;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnClickWrapSelectionShareListener;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 679
    new-instance v1, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelWrapSelectionShareListener;

    invoke-direct {v1, p0, p2}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelWrapSelectionShareListener;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 684
    new-instance v1, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnKeyWrapSelectionShareListener;

    invoke-direct {v1, p0, v3}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnKeyWrapSelectionShareListener;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 686
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mShareSelection:Landroid/app/AlertDialog;

    .line 688
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mShareSelection:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public showStoreProgressDialog(I)Landroid/app/AlertDialog;
    .locals 4
    .parameter "msg"

    .prologue
    .line 494
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 495
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 497
    .local v0, dialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 500
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 501
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    .line 503
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/MessagePopup$RejectMenuKeyEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$RejectMenuKeyEvent;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 504
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/ExtendedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 506
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mStoreProgressDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public showStoreProgressDialog(IIZLandroid/view/View;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "msg"
    .parameter "title"
    .parameter "isVisibleIcon"
    .parameter "view"

    .prologue
    .line 520
    if-eqz p4, :cond_2

    .line 521
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    .line 522
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 524
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 525
    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 526
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 527
    if-eqz p3, :cond_0

    .line 528
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 530
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    .line 531
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/MessagePopup$RejectMenuKeyEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera3d/view/MessagePopup$RejectMenuKeyEvent;-><init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup$1;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 533
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 534
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mStoreProgressDialogMultiAngle:Landroid/app/AlertDialog;

    .line 536
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->showStoreProgressDialog(I)Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0
.end method

.method public showZoomMessage(II)V
    .locals 7
    .parameter "resId"
    .parameter "duration"

    .prologue
    const-wide/16 v1, 0x9c4

    .line 723
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 724
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    if-eqz v0, :cond_1

    .line 725
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mExtendedActivity:Lcom/sonyericsson/android/camera3d/ExtendedActivity;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomToast:Landroid/widget/Toast;

    .line 726
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomMessageTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomMessageTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SelfTimer;->cancel()V

    .line 728
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomMessageTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    .line 730
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/SelfTimer;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomMessageHandler:Landroid/os/Handler;

    const-string v6, "ZoomMessage"

    move-wide v3, v1

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/SelfTimer;-><init>(JJLandroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomMessageTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    .line 734
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomMessageTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SelfTimer;->start()V

    .line 735
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mZoomToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 738
    :cond_1
    return-void
.end method
