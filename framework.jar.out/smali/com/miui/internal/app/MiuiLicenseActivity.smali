.class public Lcom/miui/internal/app/MiuiLicenseActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "MiuiLicenseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static CACHE_URL_MIUI_COPYRIGHT:Ljava/lang/String;

.field public static CACHE_URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

.field public static CACHE_URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

.field public static EXTRA_MIUI_DOC_URL:Ljava/lang/String;

.field public static URL_MIUI_COPYRIGHT:Ljava/lang/String;

.field public static URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

.field public static URL_MIUI_USER_AGREEMENT:Ljava/lang/String;


# instance fields
.field private mCachePath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "http://www.miui.com/res/doc/copyright.html"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_COPYRIGHT:Ljava/lang/String;

    .line 23
    const-string v0, "http://product.xiaomi.com/policy/privacy.html"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    .line 24
    const-string v0, "http://product.xiaomi.com/policy/eula.html"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

    .line 26
    const-string v0, "file:///system/etc/license/copyright.html"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_URL_MIUI_COPYRIGHT:Ljava/lang/String;

    .line 27
    const-string v0, "file:///system/etc/license/privacy.html"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    .line 28
    const-string v0, "file:///system/etc/license/eula.html"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "url"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->EXTRA_MIUI_DOC_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/app/MiuiLicenseActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/app/MiuiLicenseActivity;)Lcom/android/internal/app/AlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/app/MiuiLicenseActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/app/MiuiLicenseActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/miui/internal/app/MiuiLicenseActivity;->showErrorAndFinish(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/internal/app/MiuiLicenseActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private showErrorAndFinish(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, 0x1

    .line 94
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 95
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x6090071

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/miui/internal/app/MiuiLicenseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 102
    return-void
.end method


# virtual methods
.method public isConnectivityActive()Z
    .locals 2

    .prologue
    .line 89
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/MiuiLicenseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 90
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 111
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->finish()V

    .line 119
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->finish()V

    .line 115
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 39
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/miui/internal/app/MiuiLicenseActivity;->EXTRA_MIUI_DOC_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    .line 41
    sget-object v1, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_COPYRIGHT:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    const v1, 0x6090072

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/MiuiLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    .line 43
    sget-object v1, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_URL_MIUI_COPYRIGHT:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    .line 51
    :cond_0
    :goto_0
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 54
    iget-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 55
    iget-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/miui/internal/app/MiuiLicenseActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/internal/app/MiuiLicenseActivity$1;-><init>(Lcom/miui/internal/app/MiuiLicenseActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 72
    invoke-virtual {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->isConnectivityActive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    iget-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 81
    :goto_1
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 82
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 83
    iget-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 84
    iput-boolean v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 85
    invoke-virtual {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->setupAlert()V

    .line 86
    return-void

    .line 44
    .end local v0           #p:Lcom/android/internal/app/AlertController$AlertParams;
    :cond_1
    sget-object v1, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    const v1, 0x6090074

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/MiuiLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    .line 46
    sget-object v1, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    goto :goto_0

    .line 47
    :cond_2
    sget-object v1, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const v1, 0x6090073

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/MiuiLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    .line 49
    sget-object v1, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_3
    iget-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 76
    iget-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/miui/internal/app/MiuiLicenseActivity;->showErrorAndFinish(Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :cond_4
    iget-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method
