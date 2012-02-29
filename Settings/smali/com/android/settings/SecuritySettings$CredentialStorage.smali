.class Lcom/android/settings/SecuritySettings$CredentialStorage;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CredentialStorage"
.end annotation


# instance fields
.field private mAccessCheckBox:Landroid/preference/CheckBoxPreference;

.field private mEncryptedFSEnabled:Landroid/preference/CheckBoxPreference;

.field private mExternal:Z

.field private mInstallButton:Landroid/preference/Preference;

.field private mInstallWapiButton:Landroid/preference/Preference;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mPasswordButton:Landroid/preference/Preference;

.field private mResetButton:Landroid/preference/Preference;

.field private mShowingDialog:I

.field private mState:I

.field private mSubmit:Z

.field private mWillEnableEncryptedFS:Z

.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 357
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    .line 374
    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mSubmit:Z

    .line 375
    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mExternal:Z

    .line 378
    iput v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mShowingDialog:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SecuritySettings;Lcom/android/settings/SecuritySettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/android/settings/SecuritySettings$CredentialStorage;-><init>(Lcom/android/settings/SecuritySettings;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/SecuritySettings$CredentialStorage;Landroid/preference/PreferenceCategory;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 357
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->createPreferences(Landroid/preference/PreferenceCategory;I)V

    return-void
.end method

.method private changePassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "oldPassword"
    .parameter "newPassword"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p1, p2}, Landroid/security/KeyStore;->password(Ljava/lang/String;Ljava/lang/String;)Z

    .line 430
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    return v0
.end method

.method private checkError(Landroid/app/Dialog;I)Z
    .locals 6
    .parameter "dialog"
    .parameter "error"

    .prologue
    const/16 v1, 0xa

    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 530
    if-ne p2, v5, :cond_0

    .line 531
    invoke-direct {p0, v5}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    move v1, v4

    .line 549
    :goto_0
    return v1

    .line 534
    :cond_0
    if-ne p2, v2, :cond_1

    .line 535
    invoke-direct {p0, v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    move v1, v4

    .line 536
    goto :goto_0

    .line 538
    :cond_1
    if-ge p2, v1, :cond_2

    move v1, v4

    .line 539
    goto :goto_0

    .line 541
    :cond_2
    sub-int v1, p2, v1

    add-int/lit8 v0, v1, 0x1

    .line 542
    .local v0, count:I
    if-le v0, v2, :cond_3

    .line 543
    const v1, 0x7f080407

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    :goto_1
    move v1, v5

    .line 549
    goto :goto_0

    .line 544
    :cond_3
    if-ne v0, v5, :cond_4

    .line 545
    const v1, 0x7f080408

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 547
    :cond_4
    const v1, 0x7f080409

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private checkPassword(Landroid/app/Dialog;)Z
    .locals 7
    .parameter "dialog"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 504
    const v3, 0x7f0b002f

    invoke-direct {p0, p1, v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->getText(Landroid/app/Dialog;I)Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, oldPassword:Ljava/lang/String;
    const v3, 0x7f0b0030

    invoke-direct {p0, p1, v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->getText(Landroid/app/Dialog;I)Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, newPassword:Ljava/lang/String;
    const v3, 0x7f0b0031

    invoke-direct {p0, p1, v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->getText(Landroid/app/Dialog;I)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, confirmPassword:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 509
    const v3, 0x7f08040c

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    move v3, v5

    .line 525
    :goto_0
    return v3

    .line 511
    :cond_0
    if-nez v1, :cond_2

    .line 512
    invoke-direct {p0, v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->unlock(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->checkError(Landroid/app/Dialog;I)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0

    .line 513
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 514
    :cond_3
    const v3, 0x7f08040b

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    :goto_1
    move v3, v5

    .line 525
    goto :goto_0

    .line 515
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_5

    .line 516
    const v3, 0x7f08040d

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 517
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 518
    const v3, 0x7f08040a

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 519
    :cond_6
    if-nez v2, :cond_7

    .line 520
    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->initialize(Ljava/lang/String;)V

    move v3, v6

    .line 521
    goto :goto_0

    .line 523
    :cond_7
    invoke-direct {p0, v2, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->changePassword(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->checkError(Landroid/app/Dialog;I)Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v6

    goto :goto_0

    :cond_8
    move v3, v5

    goto :goto_0
.end method

.method private createPreferences(Landroid/preference/PreferenceCategory;I)V
    .locals 2
    .parameter "category"
    .parameter "type"

    .prologue
    .line 571
    packed-switch p2, :pswitch_data_0

    .line 614
    :goto_0
    return-void

    .line 573
    :pswitch_0
    new-instance v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    .line 574
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0803f8

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 575
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0803f9

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 576
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 577
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 579
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    .line 580
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    const v1, 0x7f0803fc

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 581
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    const v1, 0x7f0803fd

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 582
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 583
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 585
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WapiUtils;->isWapiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallWapiButton:Landroid/preference/Preference;

    .line 587
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallWapiButton:Landroid/preference/Preference;

    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 588
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallWapiButton:Landroid/preference/Preference;

    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 589
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallWapiButton:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 590
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallWapiButton:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 593
    :cond_0
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    .line 594
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    const v1, 0x7f0803fe

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 595
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    const v1, 0x7f0803ff

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 596
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 597
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 599
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    .line 600
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    const v1, 0x7f080400

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 601
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    const v1, 0x7f080401

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 602
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 603
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 607
    :pswitch_1
    new-instance v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mEncryptedFSEnabled:Landroid/preference/CheckBoxPreference;

    .line 608
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mEncryptedFSEnabled:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f080412

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 609
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mEncryptedFSEnabled:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f080413

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 610
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mEncryptedFSEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getText(Landroid/app/Dialog;I)Ljava/lang/String;
    .locals 3
    .parameter "dialog"
    .parameter "viewId"

    .prologue
    .line 553
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 554
    .local v0, view:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 410
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    .line 411
    return-void
.end method

.method private lock()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->lock()Z

    .line 420
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    .line 421
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->reset()Z

    .line 415
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    .line 416
    return-void
.end method

.method private varargs showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V
    .locals 2
    .parameter "dialog"
    .parameter "stringId"
    .parameter "formatArgs"

    .prologue
    .line 559
    const v1, 0x7f0b002d

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 560
    .local v0, view:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 561
    if-eqz p3, :cond_0

    array-length v1, p3

    if-nez v1, :cond_2

    .line 562
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 566
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 568
    :cond_1
    return-void

    .line 564
    :cond_2
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showPasswordDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 664
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v3, 0x7f030011

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 667
    .local v1, view:Landroid/view/View;
    iget v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 668
    const v2, 0x7f0b002c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 674
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v4, 0x7f0a001b

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0803fe

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 681
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 682
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mShowingDialog:I

    .line 683
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 684
    return-void

    .line 670
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_0
    const v2, 0x7f0b002e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 671
    const v2, 0x7f0b002f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showResetDialog()V
    .locals 3

    .prologue
    .line 687
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mShowingDialog:I

    .line 688
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x7f0a001b

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080402

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const/high16 v2, 0x104

    invoke-virtual {v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 696
    return-void
.end method

.method private showSwitchEncryptedFSDialog()V
    .locals 5

    .prologue
    const v4, 0x7f080418

    .line 699
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v3, 0x7f0a001b

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08041a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 704
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mShowingDialog:I

    .line 705
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mWillEnableEncryptedFS:Z

    if-eqz v1, :cond_0

    .line 706
    const v1, 0x7f080414

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080416

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 716
    :goto_0
    return-void

    .line 711
    :cond_0
    const v1, 0x7f080415

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080417

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showUnlockDialog()V
    .locals 5

    .prologue
    .line 643
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v3, 0x7f030012

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 647
    .local v1, view:Landroid/view/View;
    iget-boolean v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mExternal:Z

    if-eqz v2, :cond_0

    .line 648
    const v2, 0x7f0b002c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 651
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v4, 0x7f0a001b

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0803fa

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 658
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 659
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mShowingDialog:I

    .line 660
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 661
    return-void
.end method

.method private unlock(Ljava/lang/String;)I
    .locals 1
    .parameter "password"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 425
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    return v0
.end method

.method private updatePreferences(I)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 617
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_0

    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 618
    const-string v1, "persist.security.efs.enabled"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 620
    .local v0, encFSEnabled:Z
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    if-nez v0, :cond_1

    if-eq p1, v5, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 621
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    if-eq p1, v5, :cond_2

    if-nez v0, :cond_2

    move v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 624
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mEncryptedFSEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 627
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    if-ne v1, p1, :cond_3

    .line 640
    :goto_3
    return-void

    .end local v0           #encFSEnabled:Z
    :cond_0
    move v2, v3

    .line 617
    goto :goto_0

    .restart local v0       #encFSEnabled:Z
    :cond_1
    move v2, v3

    .line 620
    goto :goto_1

    :cond_2
    move v2, v3

    .line 621
    goto :goto_2

    .line 629
    :cond_3
    if-ne p1, v4, :cond_5

    .line 630
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x7f08040f

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 639
    :cond_4
    :goto_4
    iput p1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    goto :goto_3

    .line 632
    :cond_5
    if-ne p1, v5, :cond_6

    .line 633
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x7f08040e

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 635
    :cond_6
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 636
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x7f080410

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_4
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 465
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mShowingDialog:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 466
    if-ne p2, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mSubmit:Z

    .line 467
    const/4 v1, -0x3

    if-ne p2, v1, :cond_0

    .line 468
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->reset()V

    .line 486
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v4

    .line 466
    goto :goto_0

    .line 471
    :cond_2
    if-ne p2, v3, :cond_3

    .line 472
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "enableEFS"

    iget-boolean v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mWillEnableEncryptedFS:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 474
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/SecuritySettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 475
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    goto :goto_1

    .line 476
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x7f080419

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 480
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 489
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mSubmit:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 490
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mSubmit:Z

    .line 491
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->checkPassword(Landroid/app/Dialog;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 492
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 496
    .restart local p1
    :cond_1
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    .line 497
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mExternal:Z

    if-eqz v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings;->finish()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 434
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_1

    .line 435
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showUnlockDialog()V

    :goto_0
    move v2, v3

    .line 446
    :goto_1
    return v2

    .line 438
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->lock()V

    goto :goto_0

    .line 441
    .restart local p2
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mEncryptedFSEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_2

    .line 442
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    .line 443
    .local v1, bval:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mWillEnableEncryptedFS:Z

    .line 444
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showSwitchEncryptedFSDialog()V

    .end local v1           #bval:Ljava/lang/Boolean;
    :cond_2
    move v2, v3

    .line 446
    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 451
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->installFromSdCard(Landroid/content/Context;)V

    .line 461
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 453
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showPasswordDialog()V

    goto :goto_0

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 455
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showResetDialog()V

    goto :goto_0

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallWapiButton:Landroid/preference/Preference;

    if-ne p1, v0, :cond_3

    .line 457
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->installFromSdCardWapi(Landroid/content/Context;)V

    goto :goto_0

    .line 459
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method resume()V
    .locals 3

    .prologue
    .line 391
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->test()I

    move-result v1

    iput v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    .line 392
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    .line 394
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 395
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mExternal:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "android.credentials.UNLOCK"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mExternal:Z

    .line 398
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 399
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showPasswordDialog()V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 401
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showUnlockDialog()V

    goto :goto_0

    .line 403
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings;->finish()V

    goto :goto_0
.end method
