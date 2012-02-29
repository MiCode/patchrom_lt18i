.class public Lcom/android/settings/SettingsLicenseActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SettingsLicenseActivity.java"


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsLicenseActivity;)Lcom/android/internal/app/AlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method private showErrorAndFinish()V
    .locals 2

    .prologue
    .line 124
    const v0, 0x7f080282

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->finish()V

    .line 127
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const-string v0, "ro.config.license_path"

    const-string v1, "/system/etc/NOTICE.html.gz"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 60
    .local v9, fileName:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "SettingsLicenseActivity"

    const-string v1, "The system property for the license file is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const/4 v10, 0x0

    .line 67
    .local v10, inputReader:Ljava/io/InputStreamReader;
    const/4 v6, 0x0

    .line 69
    .local v6, data:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v0, 0x800

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 70
    .end local v6           #data:Ljava/lang/StringBuilder;
    .local v7, data:Ljava/lang/StringBuilder;
    const/16 v0, 0x800

    :try_start_1
    new-array v14, v0, [C

    .line 72
    .local v14, tmp:[C
    const-string v0, ".gz"

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    new-instance v11, Ljava/io/InputStreamReader;

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .end local v10           #inputReader:Ljava/io/InputStreamReader;
    .local v11, inputReader:Ljava/io/InputStreamReader;
    move-object v10, v11

    .line 78
    .end local v11           #inputReader:Ljava/io/InputStreamReader;
    .restart local v10       #inputReader:Ljava/io/InputStreamReader;
    :goto_1
    invoke-virtual {v10, v14}, Ljava/io/InputStreamReader;->read([C)I

    move-result v12

    .local v12, numRead:I
    if-ltz v12, :cond_3

    .line 79
    const/4 v0, 0x0

    invoke-virtual {v7, v14, v0, v12}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_1

    .line 81
    .end local v12           #numRead:I
    .end local v14           #tmp:[C
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v6, v7

    .line 82
    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v6       #data:Ljava/lang/StringBuilder;
    .local v8, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_2
    const-string v0, "SettingsLicenseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "License HTML file not found at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    if-eqz v10, :cond_0

    .line 92
    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 94
    :catch_1
    move-exception v0

    goto :goto_0

    .line 76
    .end local v6           #data:Ljava/lang/StringBuilder;
    .end local v8           #e:Ljava/io/FileNotFoundException;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    .restart local v14       #tmp:[C
    :cond_2
    :try_start_4
    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .end local v10           #inputReader:Ljava/io/InputStreamReader;
    .restart local v11       #inputReader:Ljava/io/InputStreamReader;
    move-object v10, v11

    .end local v11           #inputReader:Ljava/io/InputStreamReader;
    .restart local v10       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_1

    .line 91
    .restart local v12       #numRead:I
    :cond_3
    if-eqz v10, :cond_4

    .line 92
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 98
    :cond_4
    :goto_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 99
    const-string v0, "SettingsLicenseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "License HTML is empty (from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    goto/16 :goto_0

    .line 85
    .end local v7           #data:Ljava/lang/StringBuilder;
    .end local v12           #numRead:I
    .end local v14           #tmp:[C
    .restart local v6       #data:Ljava/lang/StringBuilder;
    :catch_2
    move-exception v0

    move-object v8, v0

    .line 86
    .local v8, e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v0, "SettingsLicenseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading license HTML file at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 91
    if-eqz v10, :cond_0

    .line 92
    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 94
    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 90
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 91
    :goto_5
    if-eqz v10, :cond_5

    .line 92
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 95
    :cond_5
    :goto_6
    throw v0

    .line 104
    .end local v6           #data:Ljava/lang/StringBuilder;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    .restart local v12       #numRead:I
    .restart local v14       #tmp:[C
    :cond_6
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 107
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/settings/SettingsLicenseActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsLicenseActivity$1;-><init>(Lcom/android/settings/SettingsLicenseActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 116
    iget-object v13, p0, Lcom/android/settings/SettingsLicenseActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 117
    .local v13, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v0, 0x7f080283

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 118
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    iput-object v0, v13, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, v13, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->setupAlert()V

    goto/16 :goto_0

    .line 94
    .end local v13           #p:Lcom/android/internal/app/AlertController$AlertParams;
    :catch_4
    move-exception v0

    goto/16 :goto_3

    .end local v7           #data:Ljava/lang/StringBuilder;
    .end local v12           #numRead:I
    .end local v14           #tmp:[C
    .restart local v6       #data:Ljava/lang/StringBuilder;
    :catch_5
    move-exception v1

    goto :goto_6

    .line 90
    .end local v6           #data:Ljava/lang/StringBuilder;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v0

    move-object v6, v7

    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v6       #data:Ljava/lang/StringBuilder;
    goto :goto_5

    .line 85
    .end local v6           #data:Ljava/lang/StringBuilder;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    :catch_6
    move-exception v0

    move-object v8, v0

    move-object v6, v7

    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v6       #data:Ljava/lang/StringBuilder;
    goto :goto_4

    .line 81
    :catch_7
    move-exception v0

    move-object v8, v0

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 135
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 136
    return-void
.end method
