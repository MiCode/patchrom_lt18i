.class public interface abstract Lcom/android/internal/telephony/gsm/stk/AppInterface;
.super Ljava/lang/Object;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    }
.end annotation


# static fields
.field public static final CHECK_SCREEN_IDLE_ACTION:Ljava/lang/String; = "android.intent.action.stk.check_screen_idle"

.field public static final STK_BUSY_SCREEN_ACTION:Ljava/lang/String; = "android.intent.action.stk.busy_screen"

.field public static final STK_CMD_ACTION:Ljava/lang/String; = "android.intent.action.stk.command"

.field public static final STK_IDLE_SCREEN_ACTION:Ljava/lang/String; = "android.intent.action.stk.idle_screen"

.field public static final STK_SESSION_END_ACTION:Ljava/lang/String; = "android.intent.action.stk.session_end"

.field public static final STK_TERMINATE_ACTION:Ljava/lang/String; = "android.intent.action.stk.terminate"


# virtual methods
.method public abstract onCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V
.end method
