.class public Lmiui/app/screenelement/Variables;
.super Ljava/lang/Object;
.source "Variables.java"


# static fields
.field public static final ACTUAL_X:Ljava/lang/String; = "actual_x"

.field public static final ACTUAL_Y:Ljava/lang/String; = "actual_y"

.field public static final AMPM:Ljava/lang/String; = "ampm"

.field public static final BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field public static final BATTERY_STATE:Ljava/lang/String; = "battery_state"

.field public static final BATTERY_STATE_CHARGING:I = 0x1

.field public static final BATTERY_STATE_FULL:I = 0x3

.field public static final BATTERY_STATE_LOW:I = 0x2

.field public static final BATTERY_STATE_UNPLUGGED:I = 0x0

.field public static final CALL_MISSED_COUNT:Ljava/lang/String; = "call_missed_count"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DAY_OF_WEEK:Ljava/lang/String; = "day_of_week"

.field public static final GLOBAL:Ljava/lang/String; = "global"

.field public static final HOUR12:Ljava/lang/String; = "hour12"

.field public static final HOUR24:Ljava/lang/String; = "hour24"

.field public static final MILLISECOND:Ljava/lang/String; = "msec"

.field public static final MINUTE:Ljava/lang/String; = "minute"

.field public static final MONTH:Ljava/lang/String; = "month"

.field public static final MOVE_DIST:Ljava/lang/String; = "move_dist"

.field public static final MOVE_X:Ljava/lang/String; = "move_x"

.field public static final MOVE_Y:Ljava/lang/String; = "move_y"

.field public static final MUSIC_STATE:Ljava/lang/String; = "music_state"

.field public static final MUSIC_STATE_PLAY:I = 0x1

.field public static final MUSIC_STATE_STOP:I = 0x0

.field public static final NEXT_ALARM_TIME:Ljava/lang/String; = "next_alarm_time"

.field public static final SCREEN_HEIGHT:Ljava/lang/String; = "screen_height"

.field public static final SCREEN_WIDTH:Ljava/lang/String; = "screen_width"

.field public static final SECOND:Ljava/lang/String; = "second"

.field public static final SMS_UNREAD_COUNT:Ljava/lang/String; = "sms_unread_count"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TEXT_WIDTH:Ljava/lang/String; = "text_width"

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final TOUCH_X:Ljava/lang/String; = "touch_x"

.field public static final TOUCH_Y:Ljava/lang/String; = "touch_y"

.field public static final UNLOCKER_STATE_NORMAL:I = 0x0

.field public static final UNLOCKER_STATE_PRESSED:I = 0x1

.field public static final UNLOCKER_STATE_REACHED:I = 0x2

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final VISIBILITY_FALSE:I = 0x0

.field public static final VISIBILITY_TRUE:I = 0x1

.field public static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private mObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStrObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mThisLock:Ljava/lang/Object;

.field private mThisStrLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/Variables;->mObjects:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/Variables;->mStrObjects:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/Variables;->mThisLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/Variables;->mThisStrLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
    .locals 3
    .parameter "object"
    .parameter "property"

    .prologue
    .line 121
    iget-object v1, p0, Lmiui/app/screenelement/Variables;->mThisLock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    if-nez p1, :cond_0

    .line 123
    :try_start_0
    const-string p1, "global"

    .line 124
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/Variables;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 125
    .local v0, obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    if-nez v0, :cond_1

    .line 126
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    .line 128
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Double;

    monitor-exit v1

    move-object v1, p0

    goto :goto_0

    .line 129
    .end local v0           #obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "object"
    .parameter "property"

    .prologue
    .line 133
    iget-object v1, p0, Lmiui/app/screenelement/Variables;->mThisStrLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    if-nez p1, :cond_0

    .line 135
    :try_start_0
    const-string p1, "global"

    .line 136
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/Variables;->mStrObjects:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 137
    .local v0, obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 138
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    .line 140
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    monitor-exit v1

    move-object v1, p0

    goto :goto_0

    .line 141
    .end local v0           #obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public put(Ljava/lang/String;D)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 87
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 3
    .parameter "object"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 90
    iget-object v1, p0, Lmiui/app/screenelement/Variables;->mThisLock:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    if-nez p1, :cond_0

    .line 92
    :try_start_0
    const-string p1, "global"

    .line 93
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/Variables;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 94
    .local v0, obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    if-nez v0, :cond_1

    .line 95
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    .restart local v0       #obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    iget-object v2, p0, Lmiui/app/screenelement/Variables;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    .end local v0           #obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public putStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lmiui/app/screenelement/Variables;->putStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public putStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "object"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 108
    iget-object v1, p0, Lmiui/app/screenelement/Variables;->mThisStrLock:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    if-nez p1, :cond_0

    .line 110
    :try_start_0
    const-string p1, "global"

    .line 111
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/Variables;->mStrObjects:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 112
    .local v0, obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 113
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    .restart local v0       #obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lmiui/app/screenelement/Variables;->mStrObjects:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_1
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    monitor-exit v1

    .line 118
    return-void

    .line 117
    .end local v0           #obj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
