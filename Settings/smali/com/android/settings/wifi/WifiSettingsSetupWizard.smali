.class public Lcom/android/settings/wifi/WifiSettingsSetupWizard;
.super Lcom/android/settings/wifi/WifiSettings;
.source "WifiSettingsSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mDoneButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->finish()V

    .line 45
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->requestWindowFeature(I)Z

    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setContentView(I)V

    .line 39
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mDoneButton:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mDoneButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method
