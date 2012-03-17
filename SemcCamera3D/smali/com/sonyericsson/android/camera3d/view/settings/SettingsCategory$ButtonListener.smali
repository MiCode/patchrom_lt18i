.class Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory$ButtonListener;
.super Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;
.source "SettingsCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory$ButtonListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory$ButtonListener;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "motion"

    .prologue
    const/4 v2, 0x1

    .line 272
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 273
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 288
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory$ButtonListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mListener:Landroid/view/View$OnTouchListener;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->access$100(Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 289
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory$ButtonListener;->this$0:Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;

    #getter for: Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mListener:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->access$100(Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    .line 292
    :cond_1
    return v2

    .line 275
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 276
    .local v0, order:Ljava/lang/Object;
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 277
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #order:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 278
    .local v1, order_int:I
    sget v3, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->NUMBER_OF_CAMERA_SETTINGS_ARRAY:I

    if-le v1, v3, :cond_2

    sget v3, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->NUMBER_OF_VIDEO_SETTINGS_ARRAY:I

    if-le v1, v3, :cond_2

    .line 280
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory$ButtonListener;->setSelectable(Z)V

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory$ButtonListener;->setSelectable(Z)V

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
