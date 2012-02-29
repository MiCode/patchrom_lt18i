.class public Lmiui/telephony/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# static fields
.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPresentation(Ljava/lang/String;)I
    .locals 1
    .parameter "number"

    .prologue
    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    :cond_0
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    .line 27
    :goto_0
    return v0

    .line 22
    :cond_1
    const-string v0, "-2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    goto :goto_0

    .line 24
    :cond_2
    const-string v0, "-3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    goto :goto_0

    .line 27
    :cond_3
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    goto :goto_0
.end method
