.class interface abstract Lcom/miui/internal/policy/impl/SlidingPanel$BatteryInfo;
.super Ljava/lang/Object;
.source "SlidingPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/policy/impl/SlidingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "BatteryInfo"
.end annotation


# virtual methods
.method public abstract clearBatteryAnimations()V
.end method

.method public abstract needLayoutBattery()Z
.end method

.method public abstract onSliding()V
.end method

.method public abstract setBackgroundFor(I)V
.end method

.method public abstract setBatteryAnimations()V
.end method

.method public abstract setBatteryInfo(Ljava/lang/String;)V
.end method

.method public abstract setBatteryLevel(I)V
.end method

.method public abstract setupBatteryArea()V
.end method
