.class public Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;
.super Ljava/lang/Object;
.source "CapturingModeSelectorController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView$OnModeSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$OnCapturingModeSelecterStateListener;,
        Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;
    }
.end annotation


# static fields
.field public static final INVALID_ID:I = -0x1

.field public static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CapturingModeSelectorController"

.field public static final VISIBLEFLAG_ALL:I = -0x1

.field public static final VISIBLEFLAG_NORMAL:I = 0x1

.field public static final VISIBLEFLAG_ONESHOT:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentVisibleFlag:I

.field private mDialog:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

.field private mDialogOpening:Z

.field private mDialogParentView:Landroid/view/ViewGroup;

.field private mListener:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$OnCapturingModeSelecterStateListener;

.field private mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

.field private mSelectorButton:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;

.field private mSensorOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter "isFrontSupport"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p3, unableModeList:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mCurrentVisibleFlag:I

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mSensorOrientation:I

    .line 92
    iput-object p1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mContext:Landroid/content/Context;

    .line 93
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->init(ZLjava/util/List;)V

    .line 94
    return-void
.end method

.method private createDialog()V
    .locals 4

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    .line 249
    .local v0, context:Landroid/app/Activity;
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mDialogParentView:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 254
    const-string v2, "CapturingModeSelectorController"

    const-string v3, "createDialog: be not set DialogParenet yet"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/capturingmodeselector/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 259
    .local v1, inflater:Landroid/view/LayoutInflater;
    if-eqz v1, :cond_0

    .line 262
    const v2, 0x7f03000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mDialog:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

    .line 266
    iget-object v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mDialog:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mDialogParentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mDialog:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 270
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->setupListView()V

    .line 271
    iget-object v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mDialog:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

    iget v3, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mSensorOrientation:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->setSensorOrientation(I)V

    .line 272
    iget-object v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mDialog:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->close()V

    goto :goto_0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getDialog()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mDialog:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

    if-nez v0, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->createDialog()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mDialog:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

    return-object v0
.end method

.method private init(ZLjava/util/List;)V
    .locals 2
    .parameter "isFrontSupport"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, unableMode:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;>;"
    new-instance v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;-><init>(Landroid/content/Context;ZLjava/util/List;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mDialog:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mDialogOpening:Z

    .line 101
    return-void
.end method

.method private isDialogOpening()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mDialogOpening:Z

    return v0
.end method

.method private notifyDialogState()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mListener:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$OnCapturingModeSelecterStateListener;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mListener:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$OnCapturingModeSelecterStateListener;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->isDialogOpening()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$OnCapturingModeSelecterStateListener;->onDialogStateChanged(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;Z)V

    .line 190
    :cond_0
    return-void
.end method

.method private setCurrentMode(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;)V
    .locals 1
    .parameter "modeAttr"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->setCurrentModeAttributes(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mSelectorButton:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mSelectorButton:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->setModeAttributes(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;)V

    .line 222
    :cond_1
    return-void
.end method

.method private setupListView()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mDialog:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mDialog:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->setModeGroup(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;)V

    .line 284
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mDialog:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->setItemSelectListener(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView$OnModeSelectListener;)V

    goto :goto_0
.end method


# virtual methods
.method public closeDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mDialogOpening:Z

    if-nez v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->getDialog()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

    move-result-object v0

    .line 174
    .local v0, dialog:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->close()V

    .line 178
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mDialogOpening:Z

    .line 179
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mSelectorButton:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->setSelected(Z)V

    .line 180
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->notifyDialogState()V

    goto :goto_0
.end method

.method public getCapturingMode(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    .locals 2
    .parameter "modeId"

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 227
    .local v0, result:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->getCapturingMode(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    move-result-object v0

    .line 230
    :cond_0
    return-object v0
.end method

.method public getSelectorButtonVisibility()I
    .locals 2

    .prologue
    .line 143
    const/16 v0, 0x8

    .line 144
    .local v0, visibility:I
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mSelectorButton:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mSelectorButton:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->getVisibility()I

    move-result v0

    .line 147
    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mSelectorButton:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;

    if-ne p1, v0, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->isDialogOpening()Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->openDialog()V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->closeDialog()V

    goto :goto_0
.end method

.method public onModeSelect(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;)V
    .locals 2
    .parameter "sender"
    .parameter "modeAttr"

    .prologue
    .line 331
    if-eqz p2, :cond_0

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mListener:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$OnCapturingModeSelecterStateListener;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mListener:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$OnCapturingModeSelecterStateListener;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->getModeId()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$OnCapturingModeSelecterStateListener;->onModeSelect(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;)V

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->closeDialog()V

    .line 337
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->closeDialog()V

    .line 109
    return-void
.end method

.method public openDialog()V
    .locals 3

    .prologue
    .line 154
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mDialogOpening:Z

    if-eqz v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->getDialog()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

    move-result-object v0

    .line 158
    .local v0, dialog:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->open()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mDialogOpening:Z

    .line 162
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mSelectorButton:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->setSelected(Z)V

    .line 163
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->notifyDialogState()V

    goto :goto_0
.end method

.method public setCurrentMode(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;)Z
    .locals 2
    .parameter "modeId"

    .prologue
    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, result:Z
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->getCapturingMode(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    move-result-object v0

    .line 203
    .local v0, modeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->setCurrentMode(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;)V

    .line 205
    const/4 v1, 0x1

    .line 207
    :cond_0
    return v1
.end method

.method public setCurrentVisibleFlag(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 112
    iput p1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mCurrentVisibleFlag:I

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mModeGroup:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;

    iget v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mCurrentVisibleFlag:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;->setCurrentVisibleFlag(I)V

    .line 116
    :cond_0
    return-void
.end method

.method public setDialogParentView(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mDialogParentView:Landroid/view/ViewGroup;

    .line 128
    return-void
.end method

.method public setSelectorButton(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mSelectorButton:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mSelectorButton:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mSelectorButton:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mSelectorButton:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;

    iget v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mSensorOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->setSensorOrientation(I)V

    .line 124
    :cond_0
    return-void
.end method

.method public setSelectorButtonVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mSelectorButton:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mSelectorButton:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->setVisibility(I)V

    .line 137
    :cond_0
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 291
    iput p1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mSensorOrientation:I

    .line 292
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mSelectorButton:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mSelectorButton:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;

    iget v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mSensorOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->setSensorOrientation(I)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mDialog:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mDialog:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;

    iget v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mSensorOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->setSensorOrientation(I)V

    .line 299
    :cond_1
    return-void
.end method

.method public setStateListener(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$OnCapturingModeSelecterStateListener;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController;->mListener:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$OnCapturingModeSelecterStateListener;

    .line 303
    return-void
.end method
