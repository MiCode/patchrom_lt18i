.class public final enum Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Camera3DMpoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

.field public static final enum MULTIANGLE:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

.field public static final enum PANORAMA3D:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

.field public static final enum UNKNOWN:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    const-string v1, "MULTIANGLE"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->MULTIANGLE:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    .line 117
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    const-string v1, "PANORAMA3D"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->PANORAMA3D:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    .line 118
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->UNKNOWN:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->MULTIANGLE:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->PANORAMA3D:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->UNKNOWN:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->$VALUES:[Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

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
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;
    .locals 1
    .parameter "str"

    .prologue
    .line 121
    const-string v0, "3D"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->PANORAMA3D:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    .line 126
    :goto_0
    return-object v0

    .line 123
    :cond_0
    const-string v0, "MA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->MULTIANGLE:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    goto :goto_0

    .line 126
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->UNKNOWN:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;
    .locals 1
    .parameter "name"

    .prologue
    .line 115
    const-class v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->$VALUES:[Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$1;->$SwitchMap$com$sonyericsson$android$camera3d$viewer$Constants$Camera3DMpoType:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 138
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 134
    :pswitch_0
    const-string v0, "MA"

    goto :goto_0

    .line 136
    :pswitch_1
    const-string v0, "3D"

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
