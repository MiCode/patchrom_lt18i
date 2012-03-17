.class public Lcom/sonyericsson/android/camera3d/view/Notification;
.super Landroid/widget/RelativeLayout;
.source "Notification.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/ImageManager$CaptureRemainListener;
.implements Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsListener;


# static fields
.field private static final KEYS_CAMERA:[Ljava/lang/Object; = null

.field public static final TAG:Ljava/lang/String; = "Notification"

.field public static final TEXTSIZE:F = 14.0f


# instance fields
.field private mGps:Landroid/widget/ImageView;

.field private mGpsIconAnim:Landroid/graphics/drawable/AnimationDrawable;

.field private mIsVisible:Z

.field private mKeys:[Ljava/lang/Object;

.field private mMode:I

.field private mOrientation:I

.field private mRemainText:Lcom/sonyericsson/android/camera3d/view/NumberImageView;

.field private mTouchCapture:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/Notification;->KEYS_CAMERA:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mMode:I

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mOrientation:I

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mGpsIconAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 80
    return-void
.end method

.method private onTouchCaptureSettingsChanged(Ljava/lang/Object;Z)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 188
    if-eqz p2, :cond_0

    .line 189
    const-string v1, "VIEW_FINDER"

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsResources;->getVfResourceId(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 191
    .local v0, resId:I
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mTouchCapture:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 192
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mTouchCapture:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    .end local v0           #resId:I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mTouchCapture:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 197
    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mTouchCapture:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private startGpsAcquiringAnim()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mGps:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mGps:Landroid/widget/ImageView;

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mGps:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mGpsIconAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mGpsIconAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 120
    return-void
.end method

.method private stopGpsAcquiringAnim()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mGpsIconAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mGpsIconAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mGpsIconAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method public onCaptureStatusUpdate(J)V
    .locals 4
    .parameter "remain"

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, display:Z
    const/4 v1, -0x1

    .line 205
    .local v1, formatId:I
    const-wide/16 v2, 0x32

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 206
    const v1, 0x7f0c00ca

    .line 207
    const/4 v0, 0x1

    .line 209
    :cond_0
    if-eqz v0, :cond_1

    .line 210
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mRemainText:Lcom/sonyericsson/android/camera3d/view/NumberImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->setVisibility(I)V

    .line 211
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mRemainText:Lcom/sonyericsson/android/camera3d/view/NumberImageView;

    long-to-int v3, p1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->setNumber(I)V

    .line 215
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/Notification;->updateLayout()V

    .line 216
    return-void

    .line 213
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mRemainText:Lcom/sonyericsson/android/camera3d/view/NumberImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 87
    const v0, 0x7f0d0059

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mTouchCapture:Landroid/widget/ImageView;

    .line 88
    const v0, 0x7f0d005a

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mGps:Landroid/widget/ImageView;

    .line 89
    const v0, 0x7f0d005d

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/NumberImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mRemainText:Lcom/sonyericsson/android/camera3d/view/NumberImageView;

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/Notification;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 93
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mMode:I

    .line 94
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mOrientation:I

    .line 95
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/Notification;->KEYS_CAMERA:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mKeys:[Ljava/lang/Object;

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0058
        :pswitch_0
    .end packed-switch
.end method

.method public onGpsStatusChanged(I)V
    .locals 2
    .parameter "status"

    .prologue
    const v1, 0x7f020037

    .line 137
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/Notification;->stopGpsAcquiringAnim()V

    .line 138
    packed-switch p1, :pswitch_data_0

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mGps:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 167
    return-void

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mGps:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mGps:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 148
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mGps:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 152
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mGps:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 156
    :pswitch_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mGps:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 160
    :pswitch_5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/Notification;->startGpsAcquiringAnim()V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onSettingsChanged(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .parameter "changed"

    .prologue
    .line 172
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    if-ne p1, v0, :cond_1

    .line 174
    :cond_0
    const-string v0, "VIEW_FINDER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/view/Notification;->onTouchCaptureSettingsChanged(Ljava/lang/Object;Z)V

    .line 180
    :cond_1
    :goto_0
    return-void

    .line 177
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/view/Notification;->onTouchCaptureSettingsChanged(Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public onTouchGuideAnimationEnd()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public onTouchGuideAnimationStart()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public setOneShotMode(Z)V
    .locals 0
    .parameter "oneShot"

    .prologue
    .line 252
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mIsVisible:Z

    .line 230
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/Notification;->updateLayout()V

    .line 231
    return-void
.end method

.method public setup()V
    .locals 6

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mKeys:[Ljava/lang/Object;

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 106
    .local v2, key:Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/Notification;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getCameraConfigManager()Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v4, v5}, Lcom/sonyericsson/android/camera3d/view/Notification;->onSettingsChanged(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v2           #key:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected updateLayout()V
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/Notification;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/Notification;->setVisibility(I)V

    .line 244
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/Notification;->requestLayout()V

    .line 245
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/Notification;->invalidate()V

    .line 246
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/Notification;->setVisibility(I)V

    goto :goto_0
.end method
