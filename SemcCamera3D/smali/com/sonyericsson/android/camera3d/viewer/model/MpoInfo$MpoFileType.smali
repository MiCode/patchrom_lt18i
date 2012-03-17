.class public final enum Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;
.super Ljava/lang/Enum;
.source "MpoInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MpoFileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

.field public static final enum RELATED_MPO_FILE:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

.field public static final enum TARGET_MPO_FILE:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

    const-string v1, "TARGET_MPO_FILE"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;->TARGET_MPO_FILE:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

    .line 45
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

    const-string v1, "RELATED_MPO_FILE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;->RELATED_MPO_FILE:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;->TARGET_MPO_FILE:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;->RELATED_MPO_FILE:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;->$VALUES:[Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;
    .locals 1
    .parameter "name"

    .prologue
    .line 43
    const-class v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;->$VALUES:[Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

    return-object v0
.end method
