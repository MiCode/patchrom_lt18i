.class public Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;
.super Ljava/lang/Object;
.source "StkCmdMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$2;,
        Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;,
        Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;,
        Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private loadOptionalIconFailed:Z

.field private mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

.field private mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

.field mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

.field private mEventSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

.field private mInput:Lcom/android/internal/telephony/gsm/stk/Input;

.field private mMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

.field private mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

.field private mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    .line 39
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    .line 40
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->loadOptionalIconFailed:Z

    .line 42
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    .line 108
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    .line 109
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 110
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/Menu;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    .line 111
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/Input;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mInput:Lcom/android/internal/telephony/gsm/stk/Input;

    .line 112
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->loadOptionalIconFailed:Z

    .line 113
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    .end local p0
    :goto_0
    return-void

    .line 115
    .restart local p0
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->values()[Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    goto :goto_0

    .line 120
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    goto :goto_0

    .line 123
    :pswitch_2
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    .line 124
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object p0, v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    goto :goto_0

    .line 128
    .restart local p0
    :pswitch_3
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/SetEventList;->values()[Lcom/android/internal/telephony/gsm/stk/SetEventList;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;->event:Lcom/android/internal/telephony/gsm/stk/SetEventList;

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .locals 4
    .parameter "cmdParams"

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    .line 39
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    .line 40
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    .line 41
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->loadOptionalIconFailed:Z

    .line 42
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    .line 65
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    .line 66
    iget-boolean v2, p1, Lcom/android/internal/telephony/gsm/stk/CommandParams;->loadOptionalIconFailed:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->loadOptionalIconFailed:Z

    .line 67
    sget-object v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 105
    .end local p1
    :goto_0
    return-void

    .line 70
    .restart local p1
    :pswitch_0
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;->menu:Lcom/android/internal/telephony/gsm/stk/Menu;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    goto :goto_0

    .line 78
    .restart local p1
    :pswitch_1
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    goto :goto_0

    .line 82
    .restart local p1
    :pswitch_2
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/GetInputParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/GetInputParams;->input:Lcom/android/internal/telephony/gsm/stk/Input;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mInput:Lcom/android/internal/telephony/gsm/stk/Input;

    goto :goto_0

    .line 85
    .restart local p1
    :pswitch_3
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 86
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    .line 87
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;->url:Ljava/lang/String;

    iput-object v2, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .line 88
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;

    .end local p1
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;->mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    goto :goto_0

    .line 91
    .restart local p1
    :pswitch_4
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;

    move-object v1, v0

    .line 92
    .local v1, params:Lcom/android/internal/telephony/gsm/stk/PlayToneParams;
    iget-object v2, v1, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;->settings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    .line 93
    iget-object v2, v1, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    goto :goto_0

    .line 96
    .end local v1           #params:Lcom/android/internal/telephony/gsm/stk/PlayToneParams;
    :pswitch_5
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    .line 97
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v2, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 98
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;

    .end local p1
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    goto :goto_0

    .line 101
    .restart local p1
    :pswitch_6
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;-><init>(Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    .line 102
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/SetEventListParams;

    .end local p1
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/SetEventListParams;->eventInfo:Lcom/android/internal/telephony/gsm/stk/SetEventList;

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;->event:Lcom/android/internal/telephony/gsm/stk/SetEventList;

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public geInput()Lcom/android/internal/telephony/gsm/stk/Input;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mInput:Lcom/android/internal/telephony/gsm/stk/Input;

    return-object v0
.end method

.method public geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    return-object v0
.end method

.method public getBrowserSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    return-object v0
.end method

.method public getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    return-object v0
.end method

.method public getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v0

    return-object v0
.end method

.method public getLoadOptionalIconFailed()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->loadOptionalIconFailed:Z

    return v0
.end method

.method public getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    return-object v0
.end method

.method public getSetEventList()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    return-object v0
.end method

.method public getToneSettings()Lcom/android/internal/telephony/gsm/stk/ToneSettings;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mMenu:Lcom/android/internal/telephony/gsm/stk/Menu;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mInput:Lcom/android/internal/telephony/gsm/stk/Input;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 139
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->loadOptionalIconFailed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 140
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCmdType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 142
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mToneSettings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 149
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCallSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 153
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mEventSettings:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$EventSettings;->event:Lcom/android/internal/telephony/gsm/stk/SetEventList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/SetEventList;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
