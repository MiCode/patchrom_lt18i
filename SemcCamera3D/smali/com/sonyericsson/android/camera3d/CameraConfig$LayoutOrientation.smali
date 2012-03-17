.class public final enum Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;
.super Ljava/lang/Enum;
.source "CameraConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

.field public static final enum Landscape:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

.field public static final enum Portrait:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

.field public static final enum ReverseLandscape:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

.field public static final enum ReversePortrait:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

.field public static final enum Unknown:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 437
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    .line 438
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    const-string v1, "Portrait"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    .line 439
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    const-string v1, "Landscape"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    .line 440
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    const-string v1, "ReversePortrait"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    .line 441
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    const-string v1, "ReverseLandscape"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    .line 436
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Unknown:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Portrait:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->Landscape:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->$VALUES:[Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

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
    .line 436
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;
    .locals 1
    .parameter "name"

    .prologue
    .line 436
    const-class v0, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;
    .locals 1

    .prologue
    .line 436
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->$VALUES:[Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    return-object v0
.end method
