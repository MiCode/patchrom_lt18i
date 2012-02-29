.class Lcom/android/internal/telephony/gsm/stk/RilMessage;
.super Ljava/lang/Object;
.source "StkService.java"


# instance fields
.field mData:Ljava/lang/Object;

.field mId:I

.field mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "msgId"
    .parameter "rawData"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mId:I

    .line 104
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    .line 105
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iget v0, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mId:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mId:I

    .line 109
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    .line 110
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 111
    return-void
.end method
