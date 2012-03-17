.class public final enum Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;
.super Ljava/lang/Enum;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GeoMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;

.field public static final enum GEO_OFF:Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;

.field public static final enum GEO_ON:Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;

.field public static final enum GEO_RESHOW:Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    new-instance v0, Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;

    const-string v1, "GEO_ON"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;->GEO_ON:Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;

    .line 200
    new-instance v0, Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;

    const-string v1, "GEO_OFF"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;->GEO_OFF:Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;

    .line 201
    new-instance v0, Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;

    const-string v1, "GEO_RESHOW"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;->GEO_RESHOW:Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;

    .line 198
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;

    sget-object v1, Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;->GEO_ON:Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;->GEO_OFF:Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;->GEO_RESHOW:Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;->$VALUES:[Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;

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
    .line 198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 198
    const-class v0, Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;->$VALUES:[Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/ImageManager$GeoMode;

    return-object v0
.end method
