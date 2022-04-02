.class Lcom/startapp/android/publish/cache/a$3;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/common/metaData/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/cache/a;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/startapp/android/publish/cache/a;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/cache/a;Landroid/content/Context;)V
    .registers 3

    .line 179
    iput-object p1, p0, Lcom/startapp/android/publish/cache/a$3;->b:Lcom/startapp/android/publish/cache/a;

    iput-object p2, p0, Lcom/startapp/android/publish/cache/a$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 11

    .line 183
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/startapp/android/publish/common/metaData/MetaData;->removeMetaDataListener(Lcom/startapp/android/publish/common/metaData/d;)V

    .line 184
    invoke-static {}, Lcom/startapp/android/publish/cache/d;->a()Lcom/startapp/android/publish/cache/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/cache/d;->b()Lcom/startapp/android/publish/cache/ACMConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/cache/ACMConfig;->getAutoLoad()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_b1

    .line 187
    iget-object v1, p0, Lcom/startapp/android/publish/cache/a$3;->b:Lcom/startapp/android/publish/cache/a;

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/cache/a;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 188
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    const/4 v2, 0x3

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preCacheAds load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "preCache"

    invoke-static {v4, v2, v3}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/b;->b()I

    move-result v2

    .line 191
    sget-object v3, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->FULLPAGE:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    if-ne v1, v3, :cond_65

    if-lez v2, :cond_8d

    .line 193
    iget-object v4, p0, Lcom/startapp/android/publish/cache/a$3;->b:Lcom/startapp/android/publish/cache/a;

    iget-object v5, p0, Lcom/startapp/android/publish/cache/a$3;->a:Landroid/content/Context;

    const/4 v6, 0x0

    sget-object v7, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->FULLPAGE:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    new-instance v8, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v8}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/startapp/android/publish/cache/a;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/StartAppAd;Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Lcom/startapp/android/publish/cache/c;

    goto :goto_8d

    .line 195
    :cond_65
    sget-object v3, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->OFFERWALL:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    if-ne v1, v3, :cond_7e

    const/16 v3, 0x64

    if-ge v2, v3, :cond_8d

    .line 197
    iget-object v4, p0, Lcom/startapp/android/publish/cache/a$3;->b:Lcom/startapp/android/publish/cache/a;

    iget-object v5, p0, Lcom/startapp/android/publish/cache/a$3;->a:Landroid/content/Context;

    const/4 v6, 0x0

    sget-object v7, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->OFFERWALL:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    new-instance v8, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v8}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/startapp/android/publish/cache/a;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/StartAppAd;Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Lcom/startapp/android/publish/cache/c;

    goto :goto_8d

    .line 200
    :cond_7e
    iget-object v2, p0, Lcom/startapp/android/publish/cache/a$3;->b:Lcom/startapp/android/publish/cache/a;

    iget-object v3, p0, Lcom/startapp/android/publish/cache/a$3;->a:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v6, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v6}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/startapp/android/publish/cache/a;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/StartAppAd;Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Lcom/startapp/android/publish/cache/c;

    .line 202
    :cond_8d
    :goto_8d
    iget-object v2, p0, Lcom/startapp/android/publish/cache/a$3;->b:Lcom/startapp/android/publish/cache/a;

    invoke-virtual {v2, v1}, Lcom/startapp/android/publish/cache/a;->a(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 204
    iget-object v2, p0, Lcom/startapp/android/publish/cache/a$3;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    .line 205
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 206
    iget-object v3, p0, Lcom/startapp/android/publish/cache/a$3;->a:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1f

    :cond_b1
    return-void
.end method

.method public b()V
    .registers 4

    const-string v0, "AdCacheManager"

    const/4 v1, 0x3

    const-string v2, "Failed loading metadata, unable to pre-cache."

    .line 216
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/startapp/android/publish/common/metaData/MetaData;->removeMetaDataListener(Lcom/startapp/android/publish/common/metaData/d;)V

    return-void
.end method
