.class Landroid/widget/PickerList$PickerDynamics;
.super Landroid/widget/Dynamics;
.source "PickerList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PickerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PickerDynamics"
.end annotation


# instance fields
.field private mFrictionFactor:F

.field private mSnapToFactor:F

.field final synthetic this$0:Landroid/widget/PickerList;


# direct methods
.method public constructor <init>(Landroid/widget/PickerList;FFF)V
    .locals 0
    .parameter
    .parameter "frictionFactor"
    .parameter "snapToFactor"
    .parameter "velocityFactor"

    .prologue
    .line 1276
    iput-object p1, p0, Landroid/widget/PickerList$PickerDynamics;->this$0:Landroid/widget/PickerList;

    .line 1277
    invoke-direct {p0, p4}, Landroid/widget/Dynamics;-><init>(F)V

    .line 1278
    iput p2, p0, Landroid/widget/PickerList$PickerDynamics;->mFrictionFactor:F

    .line 1279
    iput p3, p0, Landroid/widget/PickerList$PickerDynamics;->mSnapToFactor:F

    .line 1280
    return-void
.end method


# virtual methods
.method protected onUpdate(I)V
    .locals 3
    .parameter "dt"

    .prologue
    .line 1285
    iget v0, p0, Landroid/widget/PickerList$PickerDynamics;->mVelocity:F

    invoke-virtual {p0}, Landroid/widget/PickerList$PickerDynamics;->getDistanceToLimit()F

    move-result v1

    iget v2, p0, Landroid/widget/PickerList$PickerDynamics;->mSnapToFactor:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/PickerList$PickerDynamics;->mVelocity:F

    .line 1288
    iget v0, p0, Landroid/widget/PickerList$PickerDynamics;->mPosition:F

    iget v1, p0, Landroid/widget/PickerList$PickerDynamics;->mVelocity:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/PickerList$PickerDynamics;->mPosition:F

    .line 1291
    iget v0, p0, Landroid/widget/PickerList$PickerDynamics;->mVelocity:F

    iget v1, p0, Landroid/widget/PickerList$PickerDynamics;->mFrictionFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/PickerList$PickerDynamics;->mVelocity:F

    .line 1293
    const/high16 v0, 0x3f80

    iget-object v1, p0, Landroid/widget/PickerList$PickerDynamics;->this$0:Landroid/widget/PickerList;

    #getter for: Landroid/widget/PickerList;->mScale:F
    invoke-static {v1}, Landroid/widget/PickerList;->access$700(Landroid/widget/PickerList;)F

    move-result v1

    mul-float/2addr v0, v1

    const v1, 0x3ecccccd

    iget-object v2, p0, Landroid/widget/PickerList$PickerDynamics;->this$0:Landroid/widget/PickerList;

    #getter for: Landroid/widget/PickerList;->mScale:F
    invoke-static {v2}, Landroid/widget/PickerList;->access$700(Landroid/widget/PickerList;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/widget/PickerList$PickerDynamics;->isAtRest(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    iget v0, p0, Landroid/widget/PickerList$PickerDynamics;->mMinPosition:F

    iget v1, p0, Landroid/widget/PickerList$PickerDynamics;->mMaxPosition:F

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Landroid/widget/PickerList$PickerDynamics;->mPosition:F

    .line 1295
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/PickerList$PickerDynamics;->mVelocity:F

    .line 1297
    :cond_0
    return-void
.end method
