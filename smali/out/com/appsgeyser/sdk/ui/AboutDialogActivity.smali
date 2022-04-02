.class public Lcom/appsgeyser/sdk/ui/AboutDialogActivity;
.super Landroid/app/Activity;
.source "AboutDialogActivity.java"


# instance fields
.field private appName:Landroid/widget/TextView;

.field private appVersion:Landroid/widget/TextView;

.field private appsgeyserDescriptionLogoImageView:Landroid/widget/ImageView;

.field private closeScreenImageView:Landroid/widget/ImageView;

.field private config:Lcom/appsgeyser/sdk/configuration/Configuration;

.field private configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

.field private description:Ljava/lang/String;

.field private descriptionTextView:Landroid/widget/TextView;

.field private descriptionType:Ljava/lang/String;

.field private logoImageView:Landroid/widget/ImageView;

.field private privacy:Landroid/widget/Button;

.field private templateVersion:Landroid/widget/TextView;

.field private tos:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private init()V
    .registers 11

    .line 74
    :try_start_0
    invoke-static {p0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->config:Lcom/appsgeyser/sdk/configuration/Configuration;

    .line 75
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 76
    sget v1, Lcom/appsgeyser/sdk/R$id;->logo:I

    invoke-virtual {p0, v1}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->logoImageView:Landroid/widget/ImageView;

    .line 77
    sget v1, Lcom/appsgeyser/sdk/R$id;->appsgeysersdk_about_appsgeyser_logo:I

    invoke-virtual {p0, v1}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->appsgeyserDescriptionLogoImageView:Landroid/widget/ImageView;

    .line 78
    sget v1, Lcom/appsgeyser/sdk/R$id;->close_about_screen:I

    invoke-virtual {p0, v1}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->closeScreenImageView:Landroid/widget/ImageView;

    .line 79
    sget v1, Lcom/appsgeyser/sdk/R$id;->description:I

    invoke-virtual {p0, v1}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->descriptionTextView:Landroid/widget/TextView;

    .line 80
    sget v1, Lcom/appsgeyser/sdk/R$id;->about_app_name:I

    invoke-virtual {p0, v1}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->appName:Landroid/widget/TextView;

    .line 81
    sget v1, Lcom/appsgeyser/sdk/R$id;->app_version:I

    invoke-virtual {p0, v1}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->appVersion:Landroid/widget/TextView;

    .line 82
    sget v1, Lcom/appsgeyser/sdk/R$id;->template_version:I

    invoke-virtual {p0, v1}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->templateVersion:Landroid/widget/TextView;

    .line 83
    sget v1, Lcom/appsgeyser/sdk/R$id;->app_tos:I

    invoke-virtual {p0, v1}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->tos:Landroid/widget/Button;

    .line 84
    sget v1, Lcom/appsgeyser/sdk/R$id;->app_privacy:I

    invoke-virtual {p0, v1}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->privacy:Landroid/widget/Button;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_1cd

    const/4 v1, 0x0

    .line 87
    :try_start_65
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 88
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 89
    iget-object v3, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->appVersion:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v3, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->appName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_a2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_65 .. :try_end_a2} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_a2} :catch_1cd

    goto :goto_a7

    :catch_a3
    move-exception v2

    .line 92
    :try_start_a4
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 95
    :goto_a7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.appsgeyser.com?pn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    iget-object v3, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->logoImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v3, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->logoImageView:Landroid/widget/ImageView;

    new-instance v4, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$1;

    invoke-direct {v4, p0, v2}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$1;-><init>(Lcom/appsgeyser/sdk/ui/AboutDialogActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v3, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->closeScreenImageView:Landroid/widget/ImageView;

    new-instance v4, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$2;

    invoke-direct {v4, p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$2;-><init>(Lcom/appsgeyser/sdk/ui/AboutDialogActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v3, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->templateVersion:Landroid/widget/TextView;

    sget v4, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_build:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "2.19.s"

    aput-object v7, v6, v1

    invoke-virtual {p0, v4, v6}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_description_with_publish_name:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 116
    iget-object v4, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->config:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {v4}, Lcom/appsgeyser/sdk/configuration/Configuration;->getPublisherName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_113

    .line 117
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_description_without_publish_name:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 120
    :cond_113
    iget-object v4, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->descriptionType:Ljava/lang/String;

    if-eqz v4, :cond_181

    .line 121
    iget-object v4, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->descriptionType:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x5069748f

    const/4 v9, 0x2

    if-eq v7, v8, :cond_143

    const v8, 0x59941cd3

    if-eq v7, v8, :cond_139

    const v8, 0x59979c55

    if-eq v7, v8, :cond_12f

    goto :goto_14c

    :cond_12f
    const-string v7, "appsgeyser_text"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14c

    const/4 v6, 0x0

    goto :goto_14c

    :cond_139
    const-string v7, "appsgeyser_logo"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14c

    const/4 v6, 0x1

    goto :goto_14c

    :cond_143
    const-string v7, "custom"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14c

    const/4 v6, 0x2

    :cond_14c
    :goto_14c
    const/16 v4, 0x8

    if-eqz v6, :cond_177

    if-eq v6, v5, :cond_16c

    if-eq v6, v9, :cond_15f

    .line 136
    iget-object v6, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->appsgeyserDescriptionLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v4, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_181

    .line 131
    :cond_15f
    iget-object v3, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->description:Ljava/lang/String;

    .line 132
    iget-object v6, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->appsgeyserDescriptionLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v4, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_181

    .line 127
    :cond_16c
    iget-object v6, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->appsgeyserDescriptionLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iget-object v1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_181

    .line 123
    :cond_177
    iget-object v6, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->appsgeyserDescriptionLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v4, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_181
    :goto_181
    const-string v1, "PUB_NAME"

    .line 142
    iget-object v4, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->config:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-virtual {v4}, Lcom/appsgeyser/sdk/configuration/Configuration;->getPublisherName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "APPSGEYSER_URL"

    .line 143
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "APP_VERSION"

    const-string v3, ""

    .line 144
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "APP_ID"

    .line 145
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->descriptionTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 148
    iget-object v0, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->descriptionTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 150
    iget-object v0, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->tos:Landroid/widget/Button;

    new-instance v1, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$3;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$3;-><init>(Lcom/appsgeyser/sdk/ui/AboutDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->privacy:Landroid/widget/Button;

    new-instance v1, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$4;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity$4;-><init>(Lcom/appsgeyser/sdk/ui/AboutDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_1cc} :catch_1cd

    goto :goto_1d1

    :catch_1cd
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1d1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget v0, Lcom/appsgeyser/sdk/R$layout;->appsgeysersdk_about_dialog:I

    invoke-virtual {p0, v0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->setContentView(I)V

    const-string v0, "config_php_key"

    if-eqz p1, :cond_15

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    iput-object p1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    goto :goto_23

    .line 57
    :cond_15
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    iput-object p1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    .line 62
    :cond_23
    :goto_23
    iget-object p1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    if-eqz p1, :cond_35

    .line 63
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getAboutScreenDescriptionType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->descriptionType:Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getAboutScreenDescription()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->description:Ljava/lang/String;

    .line 66
    :cond_35
    invoke-direct {p0}, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->init()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 175
    iget-object v0, p0, Lcom/appsgeyser/sdk/ui/AboutDialogActivity;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    const-string v1, "config_php_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
