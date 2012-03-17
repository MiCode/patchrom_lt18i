.class public final enum Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;
.super Ljava/lang/Enum;
.source "HdmiConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

.field public static final enum FAILED:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

.field public static final enum NOT_STARTED:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

.field public static final enum SUCCEEDED:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;->NOT_STARTED:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    .line 51
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;->FAILED:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    .line 52
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    const-string v1, "SUCCEEDED"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;->SUCCEEDED:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;->NOT_STARTED:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;->FAILED:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;->SUCCEEDED:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;->$VALUES:[Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 49
    const-class v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;->$VALUES:[Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$ConnectionStatus;

    return-object v0
.end method
