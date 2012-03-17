.class final enum Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;
.super Ljava/lang/Enum;
.source "YuvOutBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/YuvOutBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OrientationDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

.field public static final enum LANDSCAPE_LEFT_RIGHT_SWEEP:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

.field public static final enum LANDSCAPE_TOP_BOTTOM_SWEEP:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

.field public static final enum POTRAIT_LEFT_RIGHT_SWEEP:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

.field public static final enum POTRAIT_TOP_BOTTOM_SWEEP:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    const-string v1, "POTRAIT_TOP_BOTTOM_SWEEP"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;->POTRAIT_TOP_BOTTOM_SWEEP:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    .line 69
    new-instance v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    const-string v1, "POTRAIT_LEFT_RIGHT_SWEEP"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;->POTRAIT_LEFT_RIGHT_SWEEP:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    .line 70
    new-instance v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    const-string v1, "LANDSCAPE_TOP_BOTTOM_SWEEP"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;->LANDSCAPE_TOP_BOTTOM_SWEEP:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    .line 71
    new-instance v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    const-string v1, "LANDSCAPE_LEFT_RIGHT_SWEEP"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;->LANDSCAPE_LEFT_RIGHT_SWEEP:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;->POTRAIT_TOP_BOTTOM_SWEEP:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;->POTRAIT_LEFT_RIGHT_SWEEP:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;->LANDSCAPE_TOP_BOTTOM_SWEEP:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;->LANDSCAPE_LEFT_RIGHT_SWEEP:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;->$VALUES:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;
    .locals 1
    .parameter "name"

    .prologue
    .line 67
    const-class v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;->$VALUES:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/YuvOutBuffer$OrientationDirection;

    return-object v0
.end method
