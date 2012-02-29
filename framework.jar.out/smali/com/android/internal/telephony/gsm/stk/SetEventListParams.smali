.class Lcom/android/internal/telephony/gsm/stk/SetEventListParams;
.super Lcom/android/internal/telephony/gsm/stk/CommandParams;
.source "CommandParams.java"


# instance fields
.field eventInfo:Lcom/android/internal/telephony/gsm/stk/SetEventList;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/SetEventList;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "eventInfo"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    .line 93
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/SetEventListParams;->eventInfo:Lcom/android/internal/telephony/gsm/stk/SetEventList;

    .line 94
    return-void
.end method
