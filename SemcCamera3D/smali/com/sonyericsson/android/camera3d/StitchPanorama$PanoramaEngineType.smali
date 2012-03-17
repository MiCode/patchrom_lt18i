.class public final enum Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;
.super Ljava/lang/Enum;
.source "StitchPanorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/StitchPanorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PanoramaEngineType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

.field public static final enum SWEEP_PANORAMA_2D:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

.field public static final enum SWEEP_PANORAMA_3D:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    const-string v1, "SWEEP_PANORAMA_3D"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;->SWEEP_PANORAMA_3D:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    .line 63
    new-instance v0, Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    const-string v1, "SWEEP_PANORAMA_2D"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;->SWEEP_PANORAMA_2D:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    sget-object v1, Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;->SWEEP_PANORAMA_3D:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;->SWEEP_PANORAMA_2D:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;->$VALUES:[Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;
    .locals 1
    .parameter "name"

    .prologue
    .line 61
    const-class v0, Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;->$VALUES:[Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    return-object v0
.end method
