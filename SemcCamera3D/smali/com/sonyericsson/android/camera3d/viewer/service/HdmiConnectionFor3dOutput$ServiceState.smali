.class public final enum Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;
.super Ljava/lang/Enum;
.source "HdmiConnectionFor3dOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

.field public static final enum SERVICE_2D_SET_DONE:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

.field public static final enum SERVICE_3D_SET_DONE:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

.field public static final enum SERVICE_BIND_SUCCESS:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

.field public static final enum SERVICE_NOT_BIND:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

.field public static final enum SERVICE_NOT_SUPPORT_HDMI:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

.field public static final enum SERVICE_TO_SET_2D:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

.field public static final enum SERVICE_TO_SET_3D:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    const-string v1, "SERVICE_NOT_SUPPORT_HDMI"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_NOT_SUPPORT_HDMI:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    .line 66
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    const-string v1, "SERVICE_BIND_SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_BIND_SUCCESS:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    .line 67
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    const-string v1, "SERVICE_NOT_BIND"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_NOT_BIND:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    .line 68
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    const-string v1, "SERVICE_TO_SET_2D"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_TO_SET_2D:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    .line 69
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    const-string v1, "SERVICE_TO_SET_3D"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_TO_SET_3D:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    .line 71
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    const-string v1, "SERVICE_2D_SET_DONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_2D_SET_DONE:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    .line 72
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    const-string v1, "SERVICE_3D_SET_DONE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_3D_SET_DONE:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    .line 64
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_NOT_SUPPORT_HDMI:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_BIND_SUCCESS:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_NOT_BIND:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_TO_SET_2D:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_TO_SET_3D:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_2D_SET_DONE:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->SERVICE_3D_SET_DONE:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->$VALUES:[Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;
    .locals 1
    .parameter "name"

    .prologue
    .line 64
    const-class v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->$VALUES:[Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnectionFor3dOutput$ServiceState;

    return-object v0
.end method
