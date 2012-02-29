.class public Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;
.super Ljava/lang/Object;
.source "StkResponseMessage.java"


# instance fields
.field addedInfo:I

.field additionalInfo:I

.field cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

.field eventValue:I

.field includeAdditionalInfo:Z

.field resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

.field usersConfirm:Z

.field usersInput:Ljava/lang/String;

.field usersMenuSelection:I

.field usersYesNoSelection:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V
    .locals 3
    .parameter "cmdMsg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    .line 25
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 26
    iput v1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersMenuSelection:I

    .line 27
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersInput:Ljava/lang/String;

    .line 28
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersYesNoSelection:Z

    .line 29
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersConfirm:Z

    .line 32
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->includeAdditionalInfo:Z

    .line 33
    iput v1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->additionalInfo:I

    .line 36
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    .line 37
    return-void
.end method


# virtual methods
.method getCmdDetails()Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    return-object v0
.end method

.method public setAdditionalInfo(ZI)V
    .locals 0
    .parameter "addInfoReq"
    .parameter "addInfoCode"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->includeAdditionalInfo:Z

    .line 66
    iput p2, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->additionalInfo:I

    .line 67
    return-void
.end method

.method public setConfirmation(Z)V
    .locals 0
    .parameter "confirm"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersConfirm:Z

    .line 62
    return-void
.end method

.method public setEvent(II)V
    .locals 0
    .parameter "event"
    .parameter "addedInfo"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->eventValue:I

    .line 53
    iput p2, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->addedInfo:I

    .line 54
    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersInput:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setMenuSelection(I)V
    .locals 0
    .parameter "selection"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersMenuSelection:I

    .line 45
    return-void
.end method

.method public setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V
    .locals 0
    .parameter "resCode"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 41
    return-void
.end method

.method public setYesNo(Z)V
    .locals 0
    .parameter "yesNo"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersYesNoSelection:Z

    .line 58
    return-void
.end method
