.class public Lcom/appsgeyser/sdk/push/MessageViewer;
.super Landroid/app/Activity;
.source "MessageViewer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createHtml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<!DOCTYPE html><html><head><title></title><meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"><style>body {background-color:#ffffff;background-repeat:no-repeat;background-position:top left;background-attachment:fixed;}h1{font-family:Arial, sans-serif;font-size:16px;color:#000000;background-color:#ffffff;}p {font-family:Georgia, serif;font-size:14px;font-style:normal;font-weight:normal;color:#000000;background-color:#ffffff;}</style></head><body><h1>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</h1>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</body></html>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget p1, Lcom/appsgeyser/sdk/R$layout;->appsgeysersdk_message_viewer:I

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/push/MessageViewer;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/push/MessageViewer;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_e6

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1d

    .line 62
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/push/MessageViewer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 64
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 68
    :cond_1d
    sget v0, Lcom/appsgeyser/sdk/R$id;->message_viewer_app_name_text_view:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/push/MessageViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/push/MessageViewer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 70
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/push/MessageViewer;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz v2, :cond_39

    .line 73
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3c

    .line 75
    :cond_39
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    :goto_3c
    sget v2, Lcom/appsgeyser/sdk/R$id;->message_viewer_imageView_icon:I

    invoke-virtual {p0, v2}, Lcom/appsgeyser/sdk/push/MessageViewer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 79
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/push/MessageViewer;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v4, 0x1

    if-eqz v1, :cond_74

    .line 82
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/push/MessageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 84
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 86
    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x42100000    # 36.0f

    mul-float v6, v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 89
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 90
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 91
    invoke-static {v1, v6, v6, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v7, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 94
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_77

    .line 96
    :cond_74
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    :goto_77
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_8e

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_8e

    .line 100
    sget v0, Lcom/appsgeyser/sdk/R$id;->message_viewer_app_bar_fake:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/push/MessageViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 101
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 104
    :cond_8e
    sget v0, Lcom/appsgeyser/sdk/R$id;->message_viewer_web_view:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/push/MessageViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v1, "com.appsgeyser.sdk.push.MessageViewer.title"

    .line 106
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.appsgeyser.sdk.push.MessageViewer.message"

    .line 107
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_d8

    if-eqz p1, :cond_d8

    const/4 v6, 0x0

    .line 111
    invoke-direct {p0, v1, p1}, Lcom/appsgeyser/sdk/push/MessageViewer;->createHtml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const-string v8, "text/html"

    const-string v9, "utf-8"

    move-object v5, v0

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 115
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 116
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 117
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 118
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    const/4 v1, -0x1

    .line 119
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 124
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 125
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 126
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 129
    :cond_d8
    sget p1, Lcom/appsgeyser/sdk/R$id;->message_viewer_button:I

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/push/MessageViewer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 132
    new-instance v0, Lcom/appsgeyser/sdk/push/MessageViewer$1;

    invoke-direct {v0, p0, p0}, Lcom/appsgeyser/sdk/push/MessageViewer$1;-><init>(Lcom/appsgeyser/sdk/push/MessageViewer;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e6
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 152
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/push/MessageViewer;->finish()V

    const/4 p1, 0x1

    return p1

    .line 155
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .registers 2

    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 162
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/push/MessageViewer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 163
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/push/MessageViewer;->finish()V

    :cond_c
    return-void
.end method
