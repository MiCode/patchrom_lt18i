.class final enum Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;
.super Ljava/lang/Enum;
.source "Panorama3dThumbRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

.field public static final enum CANCEL:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

.field public static final enum DONE:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

.field public static final enum WAIT:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    const-string v1, "WAIT"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;->WAIT:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    new-instance v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;->DONE:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    new-instance v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;->CANCEL:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    sget-object v1, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;->WAIT:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;->DONE:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;->CANCEL:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;->$VALUES:[Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 58
    const-class v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;->$VALUES:[Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    return-object v0
.end method
