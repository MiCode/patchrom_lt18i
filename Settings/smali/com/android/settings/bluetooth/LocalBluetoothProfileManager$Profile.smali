.class public final enum Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
.super Ljava/lang/Enum;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Profile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

.field public static final enum A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

.field public static final enum HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

.field public static final enum OPP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;


# instance fields
.field public final localizedString:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 200
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    const-string v1, "HEADSET"

    const v2, 0x7f080131

    invoke-direct {v0, v1, v3, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 201
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    const-string v1, "A2DP"

    const v2, 0x7f080130

    invoke-direct {v0, v1, v4, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 202
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    const-string v1, "OPP"

    const v2, 0x7f080132

    invoke-direct {v0, v1, v5, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->OPP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 199
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->OPP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->$VALUES:[Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "localizedString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 207
    iput p3, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->localizedString:I

    .line 208
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .locals 1
    .parameter

    .prologue
    .line 199
    const-class v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->$VALUES:[Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-virtual {v0}, [Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    return-object v0
.end method
