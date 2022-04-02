.class public Lcom/android/billingclient/api/ProxyBillingActivity;
.super Landroid/app/Activity;
.source "ProxyBillingActivity.java"


# instance fields
.field private mResultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "ProxyBillingActivity"

    const/16 v1, 0x64

    if-ne p1, v1, :cond_3c

    .line 70
    invoke-static {p3, v0}, Lcom/android/billingclient/util/BillingHelper;->getResponseCodeFromIntent(Landroid/content/Intent;Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_12

    if-eqz p1, :cond_2e

    .line 72
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity finished with resultCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and billing\'s responseCode: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_2e
    iget-object p2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    if-nez p3, :cond_34

    const/4 p3, 0x0

    goto :goto_38

    :cond_34
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    :goto_38
    invoke-virtual {p2, p1, p3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_55

    .line 81
    :cond_3c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Got onActivityResult with wrong requestCode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; skipping..."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_55
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "result_receiver"

    const-string v1, "ProxyBillingActivity"

    if-nez p1, :cond_7c

    const-string p1, "Launching Play Store billing flow"

    .line 37
    invoke-static {v1, p1}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    iput-object p1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 40
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "BUY_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_32

    .line 41
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    goto :goto_4a

    .line 42
    :cond_32
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SUBS_MANAGEMENT_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 43
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    goto :goto_4a

    :cond_49
    move-object p1, v2

    .line 48
    :goto_4a
    :try_start_4a
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    const/16 v5, 0x64

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    .line 47
    invoke-virtual/range {v3 .. v9}, Lcom/android/billingclient/api/ProxyBillingActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_5c
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_4a .. :try_end_5c} :catch_5d

    goto :goto_89

    :catch_5d
    move-exception p1

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got exception while trying to start a purchase flow: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->finish()V

    goto :goto_89

    :cond_7c
    const-string v2, "Launching Play Store billing flow from savedInstanceState"

    .line 55
    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    iput-object p1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    :goto_89
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    const-string v1, "result_receiver"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
