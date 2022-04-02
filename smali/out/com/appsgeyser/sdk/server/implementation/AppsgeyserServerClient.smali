.class public Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;
.super Ljava/lang/Object;
.source "AppsgeyserServerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;,
        Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$SingletonHolder;
    }
.end annotation


# instance fields
.field private configPhpModel:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

.field listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private final networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

.field private ratingDialogActivated:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->listenerList:Ljava/util/List;

    .line 62
    invoke-static {}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getInstance()Lcom/appsgeyser/sdk/server/network/NetworkManager;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->configPhpModel:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    return-object p0
.end method

.method static synthetic access$102(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->configPhpModel:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    return-object p1
.end method

.method static synthetic access$200(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Landroid/content/Context;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->initPush(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Z
    .registers 1

    .line 42
    iget-boolean p0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->ratingDialogActivated:Z

    return p0
.end method

.method static synthetic access$302(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Z)Z
    .registers 2

    .line 42
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->ratingDialogActivated:Z

    return p1
.end method

.method static synthetic access$400(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->initRatingDialog(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    return-void
.end method

.method static synthetic access$500(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V
    .registers 4

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->onGetConfigErrorResponse(Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V

    return-void
.end method

.method private getInstallerMarket(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 72
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_38

    const-string p1, ""
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_38

    :catch_11
    move-exception p1

    const-string v0, "ERROR"

    .line 79
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_38

    :cond_37
    move-object p1, v0

    :cond_38
    :goto_38
    return-object p1
.end method

.method public static getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;
    .registers 1

    .line 66
    sget-object v0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$SingletonHolder;->HOLDER_INSTANCE:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    return-object v0
.end method

.method private initPush(Landroid/content/Context;)V
    .registers 2

    .line 348
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/appsgeyser/sdk/push/OneSignalCreator;->init(Landroid/content/Context;)V

    return-void
.end method

.method private initRatingDialog(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .registers 5

    .line 352
    invoke-virtual {p2}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isRateMyAppActive()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 353
    new-instance v0, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    invoke-direct {v0, p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 354
    invoke-virtual {p2}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getRateMyAppThreshold()I

    move-result v1

    if-lez v1, :cond_17

    invoke-virtual {p2}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getRateMyAppThreshold()I

    move-result v1

    int-to-float v1, v1

    goto :goto_19

    :cond_17
    const/high16 v1, 0x40400000    # 3.0f

    :goto_19
    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->threshold(F)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    move-result-object v0

    .line 355
    invoke-virtual {p2}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getRateMyAppSessionsCount()I

    move-result v1

    if-lez v1, :cond_28

    invoke-virtual {p2}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getRateMyAppSessionsCount()I

    move-result p2

    goto :goto_29

    :cond_28
    const/4 p2, 0x3

    :goto_29
    invoke-virtual {v0, p2}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->session(I)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    move-result-object p2

    sget-object v0, Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$JTuO0Q45p1yPOFk-SNl1jHXqmso;->INSTANCE:Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$JTuO0Q45p1yPOFk-SNl1jHXqmso;

    .line 356
    invoke-virtual {p2, v0}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->onThresholdFailed(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdFailedListener;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$Hz22_sLnxFT17ROLNkhuaqs2Yto;

    invoke-direct {v0, p1}, Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$Hz22_sLnxFT17ROLNkhuaqs2Yto;-><init>(Landroid/content/Context;)V

    .line 360
    invoke-virtual {p2, v0}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->onThresholdCleared(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdClearedListener;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$7L1413UzpnqiJnyyK_f5T_48_NY;

    invoke-direct {v0, p1}, Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$7L1413UzpnqiJnyyK_f5T_48_NY;-><init>(Landroid/content/Context;)V

    .line 377
    invoke-virtual {p2, v0}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->onRatingBarFormSumbit(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogFormListener;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$3;

    invoke-direct {v0, p0, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$3;-><init>(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Landroid/content/Context;)V

    .line 387
    invoke-virtual {p2, v0}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->dialogListener(Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogListener;)Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;

    move-result-object p1

    .line 400
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder;->build()Lcom/appsgeyser/sdk/rateme/RatingDialog;

    move-result-object p1

    .line 402
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->show()V

    :cond_55
    return-void
.end method

.method static synthetic lambda$initRatingDialog$0(Lcom/appsgeyser/sdk/rateme/RatingDialog;FZ)V
    .registers 3

    .line 357
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->switchToForm()V

    .line 358
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->getEtFeedback()Landroid/widget/EditText;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$initRatingDialog$2(Landroid/content/Context;Lcom/appsgeyser/sdk/rateme/RatingDialog;FZ)V
    .registers 4

    .line 361
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->switchToForm()V

    .line 362
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->getFormTitleTextView()Landroid/widget/TextView;

    move-result-object p2

    sget p3, Lcom/appsgeyser/sdk/R$string;->rating_dialog_rate_title:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 363
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->getFormSumbitTextView()Landroid/widget/TextView;

    move-result-object p2

    sget p3, Lcom/appsgeyser/sdk/R$string;->rating_dialog_rate:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 364
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->getFormSumbitTextView()Landroid/widget/TextView;

    move-result-object p2

    new-instance p3, Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$COH1BH1aeAdcHPZvvPz1uqRXiaE;

    invoke-direct {p3, p0, p1}, Lcom/appsgeyser/sdk/server/implementation/-$$Lambda$AppsgeyserServerClient$COH1BH1aeAdcHPZvvPz1uqRXiaE;-><init>(Landroid/content/Context;Lcom/appsgeyser/sdk/rateme/RatingDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$initRatingDialog$3(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 378
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    const-string v1, "rma_dialog_feedback_clicks"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 379
    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 381
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 382
    invoke-static {p0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "widgetId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getSelectedRating()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "feedback"

    .line 384
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-static {}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->sendRMARequest(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic lambda$null$1(Landroid/content/Context;Lcom/appsgeyser/sdk/rateme/RatingDialog;Landroid/view/View;)V
    .registers 6

    .line 365
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p2

    const-string v0, "rma_dialog_rate_clicks"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 366
    invoke-virtual {p2, v0, v1, p0, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 368
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 369
    invoke-static {p0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "widgetId"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getSelectedRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rate"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-static {}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->sendRMARequest(Landroid/content/Context;Ljava/util/Map;)V

    .line 372
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->openPlaystore(Landroid/content/Context;)V

    .line 373
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->showNever()V

    .line 374
    invoke-virtual {p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->dismiss()V

    return-void
.end method

.method private onGetConfigErrorResponse(Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V
    .registers 6

    const-string v0, "ServerResponse"

    const-string v1, ""

    .line 335
    invoke-virtual {p3, v0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 336
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 338
    :try_start_e
    invoke-static {p3}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p3

    iput-object p3, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->configPhpModel:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    .line 339
    invoke-interface {p2, p3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;->receivedConfigPhp(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    :try_end_17
    .catch Lcom/google/gson/JsonParseException; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_22

    :catch_18
    move-exception p2

    .line 341
    invoke-virtual {p2}, Lcom/google/gson/JsonParseException;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "JsonParseException"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_22
    :goto_22
    invoke-static {p1}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->onGetConfigErrorResponse(Landroid/content/Context;)V

    return-void
.end method

.method private sendRequestSdkStatisticsWithArgs(Ljava/lang/String;ILandroid/content/Context;)V
    .registers 12

    .line 319
    invoke-static {p3}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://stat.appsgeyser.com/sdk_statistics.php?action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&wdid="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&guid="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getAppGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&v="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "2.19.s"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&p=android"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-static {p3}, Lcom/appsgeyser/sdk/utils/DeviceInfoGetter;->getDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&templateversion="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getTemplateVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 327
    iget-object v2, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    .line 328
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    .line 330
    invoke-virtual {p1, p3}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getEmptyRequestDoneListener(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;

    move-result-object v6

    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    .line 331
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getDefaultErrorListener(Ljava/lang/Integer;Landroid/content/Context;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v7

    move-object v5, p3

    .line 327
    invoke-virtual/range {v2 .. v7}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private sendRequestWithAllArgs(Ljava/lang/String;ILandroid/content/Context;)V
    .registers 13

    .line 244
    invoke-static {p3}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v0

    .line 247
    invoke-static {}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->getInstance()Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParser;->getDeviceIdParameters()Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->getAdvId()Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "&templateversion="

    const-string v4, "2.19.s"

    const-string v5, "&v="

    const-string v6, "&id="

    const-string v7, "&name="

    const-string v8, "http://stat.appioapp.com/statistics.php?action="

    if-nez v2, :cond_71

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getAppGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&p=android&advid="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&market="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-direct {p0, p3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstallerMarket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-static {p3}, Lcom/appsgeyser/sdk/utils/DeviceInfoGetter;->getDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getTemplateVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_b7

    .line 257
    :cond_71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getAppGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&p=android&market="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-direct {p0, p3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstallerMarket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-static {p3}, Lcom/appsgeyser/sdk/utils/DeviceInfoGetter;->getDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getTemplateVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_b7
    move-object v1, p1

    .line 265
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    .line 266
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    .line 268
    invoke-virtual {p1, p3}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getEmptyRequestDoneListener(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;

    move-result-object v4

    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    .line 269
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getDefaultErrorListener(Ljava/lang/Integer;Landroid/content/Context;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v5

    move-object v3, p3

    .line 265
    invoke-virtual/range {v0 .. v5}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;)V
    .registers 11

    .line 121
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->configPhpModel:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    if-eqz v0, :cond_9

    .line 122
    invoke-interface {p3, v0}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;->receivedConfigPhp(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    goto/16 :goto_a3

    .line 123
    :cond_9
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 124
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->listenerList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a3

    .line 127
    :cond_18
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->listenerList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p3, ""

    if-eqz p2, :cond_2a

    .line 131
    invoke-virtual {p2}, Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;->getAdvId()Ljava/lang/String;

    move-result-object p2

    goto :goto_2b

    :cond_2a
    move-object p2, p3

    .line 135
    :goto_2b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 136
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&advid="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 139
    :cond_42
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->loadConfiguration()V

    .line 141
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://config.appsgeyser.com/?widgetId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&guid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getAppGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&v="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "2.19.s"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&market="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstallerMarket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    new-instance p2, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {p2, p1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    const-string p3, "ConfigPhpURLWithParams"

    .line 149
    invoke-virtual {p2, p3, v2}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    sget-object p3, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->CONFIG_PHP:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    .line 152
    invoke-virtual {p3}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;

    invoke-direct {v5, p0, p2, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;-><init>(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;Landroid/content/Context;)V

    new-instance v6, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$2;

    invoke-direct {v6, p0, p1, p2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$2;-><init>(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V

    move-object v4, p1

    .line 151
    invoke-virtual/range {v1 .. v6}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;Lcom/android/volley/Response$ErrorListener;)V

    :goto_a3
    return-void
.end method

.method public sendAboutDialogVisitSite(Landroid/content/Context;)V
    .registers 4

    const-string v0, "about_dialog_visit_site"

    const v1, -0x3a743f20

    .line 99
    invoke-direct {p0, v0, v1, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->sendRequestSdkStatisticsWithArgs(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method public sendAfterInstallInfo(Landroid/content/Context;)V
    .registers 4

    .line 87
    sget-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->AFTERINSTALL:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result v0

    const-string v1, "install"

    invoke-direct {p0, v1, v0, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->sendRequestWithAllArgs(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method public sendApplicationMode(Landroid/content/Context;)V
    .registers 10

    .line 230
    invoke-static {p1}, Lcom/appsgeyser/sdk/configuration/Configuration;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://ads.appsgeyser.com/checkstatus.php?wid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 234
    iget-object v2, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    sget-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->APPMODE:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    .line 235
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    .line 237
    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getEmptyRequestDoneListener(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;

    move-result-object v6

    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    sget-object v1, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->APPMODE:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    .line 238
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getDefaultErrorListener(Ljava/lang/Integer;Landroid/content/Context;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v7

    move-object v5, p1

    .line 234
    invoke-virtual/range {v2 .. v7}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public sendRMARequest(Landroid/content/Context;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    sget-object v1, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->RMA:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    .line 277
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    .line 279
    invoke-virtual {v1, p1}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getEmptyRequestDoneListener(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;

    move-result-object v4

    iget-object v1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    sget-object v3, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->RMA:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    .line 280
    invoke-virtual {v3}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getDefaultErrorListener(Ljava/lang/Integer;Landroid/content/Context;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v5

    const-string v1, "http://analytics.appsgeyser.com/hypo/rma_dialog_feedback.php?action=add"

    move-object v3, p1

    move-object v6, p2

    .line 276
    invoke-virtual/range {v0 .. v6}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->sendRequestAsyncPost(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V

    return-void
.end method

.method public sendReferrerStatsRequest(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;Lcom/android/installreferrer/api/ReferrerDetails;)V
    .registers 13

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://analytics.appsgeyser.com/ref_stats.php"

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    sget-object v1, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$4;->$SwitchMap$com$appsgeyser$sdk$configuration$Constants$ReferrerInfoStatus:[I

    invoke-virtual {p2}, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_24

    const/4 v2, 0x3

    if-eq v1, v2, :cond_29

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2e

    goto :goto_33

    :cond_1f
    const-string v1, "?action=add&status=ok"

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    const-string v1, "?action=add&status=feature_not_supported"

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    const-string v1, "?action=add&status=unavailable"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    const-string v1, "?action=add&status=remote_exception"

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :goto_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 300
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 301
    sget-object v0, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->OK:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    if-ne p2, v0, :cond_72

    if-eqz p3, :cond_72

    .line 302
    invoke-virtual {p3}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object p2

    const-string v0, "referrerUrl"

    invoke-interface {v8, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-virtual {p3}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "referrerClickTime"

    invoke-interface {v8, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-virtual {p3}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "appInstallTime"

    invoke-interface {v8, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-virtual {p3}, Lcom/android/installreferrer/api/ReferrerDetails;->getGooglePlayInstantParam()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "instantExperienceLaunched"

    invoke-interface {v8, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_72
    iget-object v2, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    sget-object p2, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->REFERRER:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    .line 309
    invoke-virtual {p2}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object p2, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    .line 311
    invoke-virtual {p2, p1}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getEmptyRequestDoneListener(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;

    move-result-object v6

    iget-object p2, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->networkManager:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    sget-object p3, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->REFERRER:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    .line 312
    invoke-virtual {p3}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getDefaultErrorListener(Ljava/lang/Integer;Landroid/content/Context;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v7

    move-object v5, p1

    .line 308
    invoke-virtual/range {v2 .. v8}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->sendRequestAsyncPost(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V

    return-void
.end method

.method public sendUpdateInfo(Landroid/content/Context;)V
    .registers 5

    .line 103
    invoke-static {p1}, Lcom/appsgeyser/sdk/utils/VersionManager;->getCurrentVersion(Landroid/content/Context;)I

    move-result v0

    .line 104
    invoke-static {p1}, Lcom/appsgeyser/sdk/utils/VersionManager;->getPreviousVersion(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    .line 107
    invoke-static {p1, v0}, Lcom/appsgeyser/sdk/utils/VersionManager;->updateVersion(Landroid/content/Context;I)V

    goto :goto_1f

    :cond_f
    if-le v0, v1, :cond_1f

    .line 109
    invoke-static {p1, v0}, Lcom/appsgeyser/sdk/utils/VersionManager;->updateVersion(Landroid/content/Context;I)V

    .line 111
    sget-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->UPDATE:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result v0

    const-string v1, "update"

    invoke-direct {p0, v1, v0, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->sendRequestWithAllArgs(Ljava/lang/String;ILandroid/content/Context;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public sendUsageInfo(Landroid/content/Context;)V
    .registers 4

    .line 91
    sget-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->USAGE:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result v0

    const-string v1, "usage"

    invoke-direct {p0, v1, v0, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->sendRequestWithAllArgs(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method public setConfigPhpModel(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .registers 2

    .line 408
    iput-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->configPhpModel:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    return-void
.end method
