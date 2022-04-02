.class Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;
.super Lcom/mopub/nativeads/StaticNativeAd;
.source "MoPubCustomEventNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/MoPubCustomEventNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MoPubStaticNativeAd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;
    }
.end annotation


# static fields
.field static final PRIVACY_INFORMATION_CLICKTHROUGH_URL:Ljava/lang/String; = "https://www.mopub.com/optout"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCustomEventNativeListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

.field private final mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

.field private final mJsonObject:Lorg/json/JSONObject;

.field private final mNativeClickHandler:Lcom/mopub/nativeads/NativeClickHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/mopub/nativeads/ImpressionTracker;Lcom/mopub/nativeads/NativeClickHandler;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;)V
    .registers 6

    .line 192
    invoke-direct {p0}, Lcom/mopub/nativeads/StaticNativeAd;-><init>()V

    .line 193
    iput-object p2, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mJsonObject:Lorg/json/JSONObject;

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mContext:Landroid/content/Context;

    .line 195
    iput-object p3, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

    .line 196
    iput-object p4, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mNativeClickHandler:Lcom/mopub/nativeads/NativeClickHandler;

    .line 197
    iput-object p5, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mCustomEventNativeListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mCustomEventNativeListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    return-object p0
.end method

.method private addInstanceVariable(Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 256
    :try_start_3
    sget-object v3, Lcom/mopub/nativeads/MoPubCustomEventNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventNative$MoPubStaticNativeAd$Parameter:[I

    invoke-virtual {p1}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_a2

    goto :goto_59

    .line 291
    :pswitch_f
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->setSponsored(Ljava/lang/String;)V

    goto :goto_59

    .line 288
    :pswitch_15
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->setPrivacyInformationIconClickThroughUrl(Ljava/lang/String;)V

    goto/16 :goto_9f

    .line 285
    :pswitch_1c
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->setPrivacyInformationIconImageUrl(Ljava/lang/String;)V

    goto/16 :goto_9f

    .line 282
    :pswitch_23
    invoke-static {p2}, Lcom/mopub/common/util/Numbers;->parseDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->setStarRating(Ljava/lang/Double;)V

    goto/16 :goto_9f

    .line 279
    :pswitch_2c
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->setText(Ljava/lang/String;)V

    goto/16 :goto_9f

    .line 276
    :pswitch_33
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->setTitle(Ljava/lang/String;)V

    goto :goto_9f

    .line 273
    :pswitch_39
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->setCallToAction(Ljava/lang/String;)V

    goto :goto_9f

    .line 270
    :pswitch_3f
    invoke-direct {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->parseClickTrackers(Ljava/lang/Object;)V

    goto :goto_9f

    .line 267
    :pswitch_43
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->setClickDestinationUrl(Ljava/lang/String;)V

    goto :goto_9f

    .line 264
    :pswitch_49
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->addImpressionTrackers(Ljava/lang/Object;)V

    goto :goto_9f

    .line 261
    :pswitch_4d
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    goto :goto_9f

    .line 258
    :pswitch_53
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    goto :goto_9f

    .line 293
    :goto_59
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/mopub/nativeads/MoPubCustomEventNative;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v4, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to add JSON key to internal mapping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_79
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_79} :catch_7a

    goto :goto_9f

    :catch_7a
    move-exception p2

    .line 297
    iget-boolean v3, p1, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->required:Z

    if-nez v3, :cond_a0

    .line 298
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/nativeads/MoPubCustomEventNative;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v3, v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring class cast exception for optional key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {p2, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_9f
    return-void

    .line 300
    :cond_a0
    throw p2

    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4d
        :pswitch_49
        :pswitch_43
        :pswitch_3f
        :pswitch_39
        :pswitch_33
        :pswitch_2c
        :pswitch_23
        :pswitch_1c
        :pswitch_15
        :pswitch_f
    .end packed-switch
.end method

.method private containsRequiredKeys(Lorg/json/JSONObject;)Z
    .registers 4

    .line 244
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 245
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 246
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 247
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 250
    :cond_17
    sget-object p1, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->requiredKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method private isImageKey(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_12

    .line 314
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method private parseClickTrackers(Ljava/lang/Object;)V
    .registers 3

    .line 306
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_8

    .line 307
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->addClickTrackers(Ljava/lang/Object;)V

    goto :goto_d

    .line 309
    :cond_8
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->addClickTracker(Ljava/lang/String;)V

    :goto_d
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .registers 3

    .line 354
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/ImpressionTracker;->removeView(Landroid/view/View;)V

    .line 355
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mNativeClickHandler:Lcom/mopub/nativeads/NativeClickHandler;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeClickHandler;->clearOnClickListener(Landroid/view/View;)V

    return-void
.end method

.method public destroy()V
    .registers 2

    .line 360
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v0}, Lcom/mopub/nativeads/ImpressionTracker;->destroy()V

    .line 361
    invoke-super {p0}, Lcom/mopub/nativeads/StaticNativeAd;->destroy()V

    return-void
.end method

.method getAllImageUrls()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 333
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_16
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 336
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_27
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->getPrivacyInformationIconImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 339
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->getPrivacyInformationIconImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_38
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->getExtrasImageUrls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method getExtrasImageUrls()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 320
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 321
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->isImageKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_19

    .line 322
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_43
    return-object v0
.end method

.method public handleClick(Landroid/view/View;)V
    .registers 6

    .line 372
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/nativeads/MoPubCustomEventNative;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 373
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->notifyAdClicked()V

    .line 374
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mNativeClickHandler:Lcom/mopub/nativeads/NativeClickHandler;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->getClickDestinationUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mopub/nativeads/NativeClickHandler;->openClickDestinationUrl(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method loadAd()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mJsonObject:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->containsRequiredKeys(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 205
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 206
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 208
    invoke-static {v1}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->from(Ljava/lang/String;)Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 212
    :try_start_20
    iget-object v3, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->addInstanceVariable(Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/ClassCastException; {:try_start_20 .. :try_end_29} :catch_2a

    goto :goto_e

    .line 214
    :catch_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject key ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") contained unexpected value."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_46
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e

    .line 220
    :cond_50
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->getPrivacyInformationIconClickThroughUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "https://www.mopub.com/optout"

    .line 221
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->setPrivacyInformationIconClickThroughUrl(Ljava/lang/String;)V

    .line 224
    :cond_5f
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->getAllImageUrls()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$1;

    invoke-direct {v2, p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$1;-><init>(Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;)V

    invoke-static {v0, v1, v2}, Lcom/mopub/nativeads/NativeImageHelper;->preCacheImages(Landroid/content/Context;Ljava/util/List;Lcom/mopub/nativeads/NativeImageHelper$ImageListener;)V

    return-void

    .line 202
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JSONObject did not contain required keys."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_77

    :goto_76
    throw v0

    :goto_77
    goto :goto_76
.end method

.method public prepare(Landroid/view/View;)V
    .registers 3

    .line 348
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v0, p1, p0}, Lcom/mopub/nativeads/ImpressionTracker;->addView(Landroid/view/View;Lcom/mopub/nativeads/ImpressionInterface;)V

    .line 349
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mNativeClickHandler:Lcom/mopub/nativeads/NativeClickHandler;

    invoke-virtual {v0, p1, p0}, Lcom/mopub/nativeads/NativeClickHandler;->setOnClickListener(Landroid/view/View;Lcom/mopub/nativeads/ClickInterface;)V

    return-void
.end method

.method public recordImpression(Landroid/view/View;)V
    .registers 2

    .line 367
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->notifyAdImpressed()V

    return-void
.end method
