.class synthetic Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$1;
.super Ljava/lang/Object;
.source "UnlockerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$internal$policy$impl$AwesomeLockScreenImp$UnlockerScreenElement$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 441
    invoke-static {}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->values()[Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$1;->$SwitchMap$com$miui$internal$policy$impl$AwesomeLockScreenImp$UnlockerScreenElement$State:[I

    :try_start_0
    sget-object v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$1;->$SwitchMap$com$miui$internal$policy$impl$AwesomeLockScreenImp$UnlockerScreenElement$State:[I

    sget-object v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Normal:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    invoke-virtual {v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$1;->$SwitchMap$com$miui$internal$policy$impl$AwesomeLockScreenImp$UnlockerScreenElement$State:[I

    sget-object v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Pressed:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    invoke-virtual {v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$1;->$SwitchMap$com$miui$internal$policy$impl$AwesomeLockScreenImp$UnlockerScreenElement$State:[I

    sget-object v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Reached:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    invoke-virtual {v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
