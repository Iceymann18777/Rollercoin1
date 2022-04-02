.class public Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DataSdkActivity.java"


# instance fields
.field private configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

.field private dataActivity:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static startRequestPermissions(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Ljava/lang/String;)V
    .registers 5

    .line 54
    invoke-static {p1, p0}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->isPermissionsRequired(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 55
    invoke-static {p0}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->isSdkAccepted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_17

    .line 67
    :cond_13
    invoke-static {p1, p0}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->initSdk(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)V

    goto :goto_36

    .line 56
    :cond_17
    :goto_17
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "com.appsgeyser.sdk.permission.DataSdkActivity.textOfPolicy"

    .line 60
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2e
    const-string p2, "com.appsgeyser.sdk.permission.DataSdkActivity.configPhp"

    .line 63
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_36
    return-void
.end method


# virtual methods
.method public synthetic lambda$showEulaDialog$0$DataSdkActivity(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .line 190
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p3, v0, :cond_15

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->isPermissionsRequired(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_15

    .line 191
    invoke-static {p2, p1}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->acceptAllActiveSdk(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    const/16 p3, 0x4e

    .line 192
    invoke-static {p2, p1, p3}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->requestAllActivePermissions(Landroid/app/Activity;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;I)V

    goto :goto_1e

    .line 194
    :cond_15
    invoke-static {p2, p1}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->acceptAllActiveSdk(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    .line 195
    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->initSdk(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)V

    .line 196
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->finish()V

    :goto_1e
    return-void
.end method

.method public synthetic lambda$showEulaDialog$1$DataSdkActivity(Landroid/app/Activity;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Ljava/lang/String;Landroid/view/View;)V
    .registers 5

    .line 201
    iget-object p4, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->dataActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1, p2, p4, p3}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->declineAllActiveSdk(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 73
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    iput-object p0, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->dataActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 75
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_50

    const-string v0, "com.appsgeyser.sdk.permission.DataSdkActivity.configPhp"

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    iput-object v0, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const-string v2, "com.appsgeyser.sdk.permission.DataSdkActivity.textOfPolicy"

    if-lt v0, v1, :cond_3f

    .line 83
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 86
    iget-object v0, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    if-eqz v0, :cond_50

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->showEulaDialog(Ljava/lang/String;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    goto :goto_50

    .line 91
    :cond_2f
    iget-object p1, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    invoke-static {p1, p0}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->isPermissionsRequired(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 92
    iget-object p1, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    const/16 v0, 0x4e

    invoke-static {p0, p1, v0}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->requestAllActivePermissions(Landroid/app/Activity;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;I)V

    goto :goto_50

    .line 96
    :cond_3f
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 99
    iget-object v0, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    if-eqz v0, :cond_50

    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->showEulaDialog(Ljava/lang/String;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    :cond_50
    :goto_50
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 230
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 231
    invoke-static {}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->getFastTrackAdsController()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->showPendingFullscreen(Landroid/content/Context;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 16

    const/16 v0, 0x4e

    if-ne v0, p1, :cond_e4

    .line 113
    :try_start_4
    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, p1, :cond_cd

    .line 114
    aget-object v2, p2, v1

    .line 115
    aget v3, p3, v1

    .line 116
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v4

    .line 118
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, -0x1

    sparse-switch v5, :sswitch_data_e6

    goto :goto_5b

    :sswitch_1f
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const/4 v2, 0x4

    goto :goto_5c

    :sswitch_29
    const-string v5, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const/4 v2, 0x1

    goto :goto_5c

    :sswitch_33
    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const/4 v2, 0x2

    goto :goto_5c

    :sswitch_3d
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const/4 v2, 0x3

    goto :goto_5c

    :sswitch_47
    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const/4 v2, 0x5

    goto :goto_5c

    :sswitch_51
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const/4 v2, 0x0

    goto :goto_5c

    :cond_5b
    :goto_5b
    const/4 v2, -0x1

    :goto_5c
    if-eqz v2, :cond_ba

    if-eq v2, v10, :cond_aa

    if-eq v2, v9, :cond_9a

    if-eq v2, v8, :cond_8a

    if-eq v2, v7, :cond_7a

    if-eq v2, v6, :cond_6a

    goto/16 :goto_c9

    :cond_6a
    if-nez v3, :cond_72

    const-string v2, "click_accept_permission_read_external_storage"

    .line 156
    invoke-virtual {v4, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V

    goto :goto_c9

    :cond_72
    if-ne v3, v11, :cond_c9

    const-string v2, "click_decline_permission_read_external_storage"

    .line 158
    invoke-virtual {v4, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V

    goto :goto_c9

    :cond_7a
    if-nez v3, :cond_82

    const-string v2, "click_accept_permission_write_external_storage"

    .line 149
    invoke-virtual {v4, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V

    goto :goto_c9

    :cond_82
    if-ne v3, v11, :cond_c9

    const-string v2, "click_decline_permission_write_external_storage"

    .line 151
    invoke-virtual {v4, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V

    goto :goto_c9

    :cond_8a
    if-nez v3, :cond_92

    const-string v2, "click_accept_permission_access_coarse_location"

    .line 142
    invoke-virtual {v4, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V

    goto :goto_c9

    :cond_92
    if-ne v3, v11, :cond_c9

    const-string v2, "click_decline_permission_access_coarse_location"

    .line 144
    invoke-virtual {v4, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V

    goto :goto_c9

    :cond_9a
    if-nez v3, :cond_a2

    const-string v2, "click_accept_permission_read_phone_state"

    .line 135
    invoke-virtual {v4, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V

    goto :goto_c9

    :cond_a2
    if-ne v3, v11, :cond_c9

    const-string v2, "click_decline_permission_read_phone_state"

    .line 137
    invoke-virtual {v4, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V

    goto :goto_c9

    :cond_aa
    if-nez v3, :cond_b2

    const-string v2, "click_accept_permission_get_accounts"

    .line 128
    invoke-virtual {v4, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V

    goto :goto_c9

    :cond_b2
    if-ne v3, v11, :cond_c9

    const-string v2, "click_decline_permission_get_accounts"

    .line 130
    invoke-virtual {v4, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V

    goto :goto_c9

    :cond_ba
    if-nez v3, :cond_c2

    const-string v2, "click_accept_permission_access_fine_location"

    .line 121
    invoke-virtual {v4, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V

    goto :goto_c9

    :cond_c2
    if-ne v3, v11, :cond_c9

    const-string v2, "click_decline_permission_access_fine_location"

    .line 123
    invoke-virtual {v4, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V
    :try_end_c9
    .catchall {:try_start_4 .. :try_end_c9} :catchall_d8

    :cond_c9
    :goto_c9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    .line 165
    :cond_cd
    iget-object p1, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    if-eqz p1, :cond_d4

    .line 166
    invoke-static {p1, p0}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->initSdk(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)V

    .line 168
    :cond_d4
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->finish()V

    goto :goto_e4

    :catchall_d8
    move-exception p1

    .line 165
    iget-object p2, p0, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    if-eqz p2, :cond_e0

    .line 166
    invoke-static {p2, p0}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->initSdk(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)V

    .line 168
    :cond_e0
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->finish()V

    .line 169
    throw p1

    :cond_e4
    :goto_e4
    return-void

    nop

    :sswitch_data_e6
    .sparse-switch
        -0x70918bc1 -> :sswitch_51
        -0x1833add0 -> :sswitch_47
        -0x3c1ac56 -> :sswitch_3d
        -0x550ba9 -> :sswitch_33
        0x4bcdda0f -> :sswitch_29
        0x516a29a7 -> :sswitch_1f
    .end sparse-switch
.end method

.method public showEulaDialog(Ljava/lang/String;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .registers 9

    .line 175
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 176
    sget v1, Lcom/appsgeyser/sdk/R$layout;->appsgeysersdk_datasdk_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 178
    sget v1, Lcom/appsgeyser/sdk/R$id;->appsgeysersdk_datasdk_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 179
    sget v2, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_eula_title:I

    invoke-virtual {p0, v2}, Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    sget v3, Lcom/appsgeyser/sdk/R$style;->MaterialAlertDialog:I

    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 182
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 186
    sget v3, Lcom/appsgeyser/sdk/R$id;->appsgeysersdk_datasdk_dialog_accept:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 187
    sget v4, Lcom/appsgeyser/sdk/R$id;->appsgeysersdk_datasdk_dialog_decline:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 189
    new-instance v5, Lcom/appsgeyser/sdk/datasdk/-$$Lambda$DataSdkActivity$hjetLU3kJIq9AiJjg6JwQf9btKo;

    invoke-direct {v5, p0, p2, p0}, Lcom/appsgeyser/sdk/datasdk/-$$Lambda$DataSdkActivity$hjetLU3kJIq9AiJjg6JwQf9btKo;-><init>(Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/app/Activity;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    new-instance v3, Lcom/appsgeyser/sdk/datasdk/-$$Lambda$DataSdkActivity$9D9I4_OkQvXChmUEYXio2eE3tm4;

    invoke-direct {v3, p0, p0, p2, p1}, Lcom/appsgeyser/sdk/datasdk/-$$Lambda$DataSdkActivity$9D9I4_OkQvXChmUEYXio2eE3tm4;-><init>(Lcom/appsgeyser/sdk/datasdk/DataSdkActivity;Landroid/app/Activity;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 205
    sget v3, Lcom/appsgeyser/sdk/R$id;->appsgeysersdk_datasdk_dialog_web_view:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getEulaBeginning()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_68

    invoke-virtual {p2}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getEulaBeginning()Ljava/lang/String;

    move-result-object p1

    goto :goto_6a

    :cond_68
    const-string p1, ""

    :goto_6a
    invoke-virtual {v4, v2, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual {v3, p1, p2, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 211
    new-instance p1, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {p1, p0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    const-string p2, "elapsedTime"

    .line 212
    invoke-virtual {p1, p2, v2, v3}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefLong(Ljava/lang/String;J)V

    .line 214
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 215
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 218
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 220
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_b0

    .line 221
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/4 p2, -0x1

    .line 222
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 223
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 224
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_b0
    return-void
.end method
