.class public Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
.super Ljava/lang/Object;
.source "CapturingModeAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CapturingMode"


# instance fields
.field private final mAlwaysInvisible:Z

.field private final mEnableVisibleFlag:I

.field private final mIconId:I

.field private final mLargeIconId:I

.field private final mModeId:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

.field private final mTextId:I

.field private final mType:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;IIIIZ)V
    .locals 0
    .parameter "modeId"
    .parameter "type"
    .parameter "iconId"
    .parameter "largeIconId"
    .parameter "textId"
    .parameter "enableVisibleFlag"
    .parameter "alwaysInvisible"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->mModeId:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    .line 60
    iput-object p2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->mType:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    .line 61
    iput p3, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->mIconId:I

    .line 62
    iput p4, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->mLargeIconId:I

    .line 63
    iput p5, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->mTextId:I

    .line 64
    iput p6, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->mEnableVisibleFlag:I

    .line 65
    iput-boolean p7, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->mAlwaysInvisible:Z

    .line 66
    return-void
.end method


# virtual methods
.method public getEnableVisibleFlag()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->mEnableVisibleFlag:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->mIconId:I

    return v0
.end method

.method public getLargeIconId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->mLargeIconId:I

    return v0
.end method

.method public getModeId()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->mModeId:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorController$CapturingModeId;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->mTextId:I

    return v0
.end method

.method public getType()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->mType:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    return-object v0
.end method

.method public isAlwaysInvisible()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->mAlwaysInvisible:Z

    return v0
.end method

.method public isEnable(I)Z
    .locals 2
    .parameter "visibleFlag"

    .prologue
    .line 96
    iget v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->mEnableVisibleFlag:I

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    .line 100
    .local v0, result:Z
    :goto_0
    return v0

    .line 96
    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
