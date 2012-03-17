.class public Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;
.super Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;
.source "SettingsDialogCapturingMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$1;,
        Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$MainCameraLauncher;,
        Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$ButtonListener;,
        Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$ViewFinderListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingsDialogCapturingMode"


# instance fields
.field private mButtonListener:Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;

.field private mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMainCameraLauncher:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$MainCameraLauncher;

.field private mViewFinderListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->back()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->setValue(Landroid/view/View;)V

    return-void
.end method

.method private back()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mListener:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mListener:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;->onValueChanged(Ljava/lang/Object;)V

    .line 140
    :cond_0
    return-void
.end method

.method private setValue(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mListener:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mListener:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;->onValueChanged(Ljava/lang/Object;)V

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public commit()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 99
    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mIndex:I

    .line 102
    .local v2, numberOfOptions:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mButtonListLandscape:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 103
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mButtonListLandscape:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 104
    .local v0, button_l:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    if-eqz v0, :cond_0

    .line 105
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mIndex:I

    if-ge v1, v3, :cond_1

    .line 106
    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setVisibility(I)V

    .line 102
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setVisibility(I)V

    goto :goto_1

    .line 112
    .end local v0           #button_l:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    :cond_2
    iput v4, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mIndex:I

    .line 113
    return v2
.end method

.method public setButton(Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;Ljava/lang/Object;IIZ)Z
    .locals 3
    .parameter "button"
    .parameter "tag"
    .parameter "iconResourceId"
    .parameter "textResourceId"
    .parameter "isSelected"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    if-eqz p1, :cond_2

    .line 120
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setTag(Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p1, p3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setIconResource(I)V

    .line 122
    invoke-virtual {p1, p4}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setText(I)V

    .line 123
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setListener(Landroid/view/View$OnTouchListener;)V

    .line 126
    :cond_0
    if-eqz p5, :cond_1

    .line 127
    invoke-static {p1, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonSelected(Landroid/view/View;ZZ)V

    :goto_0
    move v0, v1

    .line 133
    :goto_1
    return v0

    .line 129
    :cond_1
    invoke-static {p1, v2, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonSelected(Landroid/view/View;ZZ)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 133
    goto :goto_1
.end method

.method public setup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$ViewFinderListener;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$ViewFinderListener;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mViewFinderListener:Landroid/view/View$OnTouchListener;

    .line 59
    const v0, 0x7f0d0046

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mViewFinderListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 63
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$ButtonListener;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$ButtonListener;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mButtonListener:Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mButtonListener:Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mButtonListLandscape:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->setList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 68
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$MainCameraLauncher;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$MainCameraLauncher;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mMainCameraLauncher:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$MainCameraLauncher;

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mMainCameraLauncher:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$MainCameraLauncher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mButtonListLandscape:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$MainCameraLauncher;->setList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mListenerMap:Ljava/util/HashMap;

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mListenerMap:Ljava/util/HashMap;

    const-string v1, "PANORAMA_3D"

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mButtonListener:Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mListenerMap:Ljava/util/HashMap;

    const-string v1, "MULTI_ANGLE"

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mButtonListener:Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mListenerMap:Ljava/util/HashMap;

    const-string v1, "PANORAMA_2D"

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mButtonListener:Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mListenerMap:Ljava/util/HashMap;

    const-string v1, "NORMAL"

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mMainCameraLauncher:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$MainCameraLauncher;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mListenerMap:Ljava/util/HashMap;

    const-string v1, "SCENE_RECOGNITION"

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mMainCameraLauncher:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$MainCameraLauncher;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mListenerMap:Ljava/util/HashMap;

    const-string v1, "SMILE_DETECTION"

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode;->mMainCameraLauncher:Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialogCapturingMode$MainCameraLauncher;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public startCloseAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 88
    return-void
.end method
