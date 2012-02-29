.class public final enum Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
.super Ljava/lang/Enum;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmAlphabet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GsmLanguage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

.field public static final enum BENGALI:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

.field public static final enum DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

.field public static final enum GUJARATI:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

.field public static final enum HINDI:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

.field public static final enum KANNADA:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

.field public static final enum MALAYALAM:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

.field public static final enum ORIYA:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

.field public static final enum PORTUGUESE:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

.field public static final enum PUNJABI:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

.field public static final enum SPANISH:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

.field public static final enum TAMIL:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

.field public static final enum TELUGU:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

.field public static final enum TURKISH:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

.field public static final enum URDU:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    const-string v1, "TURKISH"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->TURKISH:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    const-string v1, "SPANISH"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->SPANISH:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    const-string v1, "PORTUGUESE"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->PORTUGUESE:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    const-string v1, "BENGALI"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->BENGALI:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    const-string v1, "GUJARATI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->GUJARATI:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    const-string v1, "HINDI"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->HINDI:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    const-string v1, "KANNADA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->KANNADA:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    const-string v1, "MALAYALAM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->MALAYALAM:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    const-string v1, "ORIYA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->ORIYA:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    const-string v1, "PUNJABI"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->PUNJABI:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    const-string v1, "TAMIL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->TAMIL:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    const-string v1, "TELUGU"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->TELUGU:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    const-string v1, "URDU"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->URDU:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    .line 28
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->DEFAULT:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->TURKISH:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->SPANISH:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->PORTUGUESE:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->BENGALI:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->GUJARATI:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->HINDI:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->KANNADA:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->MALAYALAM:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->ORIYA:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->PUNJABI:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->TAMIL:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->TELUGU:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->URDU:Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->$VALUES:[Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static toGsmLanguage(I)Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    .locals 1
    .parameter "languageCode"

    .prologue
    .line 43
    if-ltz p0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->values()[Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 44
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->values()[Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    move-result-object v0

    aget-object v0, v0, p0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    .locals 1
    .parameter "name"

    .prologue
    .line 28
    const-class v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->$VALUES:[Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;

    return-object v0
.end method


# virtual methods
.method public getLanguageCode()I
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmAlphabet$GsmLanguage;->ordinal()I

    move-result v0

    return v0
.end method
