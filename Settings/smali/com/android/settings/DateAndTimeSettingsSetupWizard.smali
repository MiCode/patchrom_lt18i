.class public Lcom/android/settings/DateAndTimeSettingsSetupWizard;
.super Lcom/android/settings/DateTimeSettings;
.source "DateAndTimeSettingsSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mDoneButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/settings/DateAndTimeSettingsSetupWizard;->finish()V

    .line 46
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/DateAndTimeSettingsSetupWizard;->requestWindowFeature(I)Z

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/DateTimeSettings;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/android/settings/DateAndTimeSettingsSetupWizard;->setContentView(I)V

    .line 40
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/android/settings/DateAndTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateAndTimeSettingsSetupWizard;->mDoneButton:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/android/settings/DateAndTimeSettingsSetupWizard;->mDoneButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method
