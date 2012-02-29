.class public final enum Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;
.super Ljava/lang/Enum;
.source "NetworkInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/NetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RAT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;

.field public static final enum GSM:Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;

.field public static final enum UNDEFINED_OR_NO_CHANGE:Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;

.field public static final enum WCDMA:Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;

    const-string v1, "GSM"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;->GSM:Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;

    const-string v1, "WCDMA"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;->WCDMA:Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;

    const-string v1, "UNDEFINED_OR_NO_CHANGE"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;->UNDEFINED_OR_NO_CHANGE:Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;

    sget-object v1, Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;->GSM:Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;->WCDMA:Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;->UNDEFINED_OR_NO_CHANGE:Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;->$VALUES:[Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;
    .locals 1
    .parameter "name"

    .prologue
    .line 42
    const-class v0, Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;->$VALUES:[Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;

    return-object v0
.end method
