.class final Lcom/startapp/android/publish/common/metaData/f$1;
.super Lcom/startapp/android/publish/common/metaData/c;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/common/metaData/f;->a(Landroid/content/Context;Lcom/startapp/common/b/a/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/startapp/android/publish/common/model/AdPreferences;

.field final synthetic c:Lcom/startapp/common/b/a/b$b;

.field private d:Lcom/startapp/android/publish/common/metaData/MetaData;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/common/b/a/b$b;)V
    .registers 7

    .line 41
    iput-object p4, p0, Lcom/startapp/android/publish/common/metaData/f$1;->a:Landroid/content/Context;

    iput-object p5, p0, Lcom/startapp/android/publish/common/metaData/f$1;->b:Lcom/startapp/android/publish/common/model/AdPreferences;

    iput-object p6, p0, Lcom/startapp/android/publish/common/metaData/f$1;->c:Lcom/startapp/common/b/a/b$b;

    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/android/publish/common/metaData/c;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;)V

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/startapp/android/publish/common/metaData/f$1;->d:Lcom/startapp/android/publish/common/metaData/MetaData;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Boolean;)V
    .registers 6

    .line 66
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/startapp/android/publish/common/metaData/f$1;->d:Lcom/startapp/android/publish/common/metaData/MetaData;

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/startapp/android/publish/common/metaData/f$1;->a:Landroid/content/Context;

    if-eqz p1, :cond_15

    .line 67
    iget-object p1, p0, Lcom/startapp/android/publish/common/metaData/f$1;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/f$1;->d:Lcom/startapp/android/publish/common/metaData/MetaData;

    invoke-static {p1, v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->update(Landroid/content/Context;Lcom/startapp/android/publish/common/metaData/MetaData;)V

    .line 70
    :cond_15
    iget-object p1, p0, Lcom/startapp/android/publish/common/metaData/f$1;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/Utils/b;->c(Landroid/content/Context;)V

    .line 72
    iget-object p1, p0, Lcom/startapp/android/publish/common/metaData/f$1;->c:Lcom/startapp/common/b/a/b$b;

    if-eqz p1, :cond_36

    .line 73
    iget-object p1, p0, Lcom/startapp/android/publish/common/metaData/f$1;->c:Lcom/startapp/common/b/a/b$b;

    sget-object v0, Lcom/startapp/common/b/a/b$a;->a:Lcom/startapp/common/b/a/b$a;

    invoke-interface {p1, v0}, Lcom/startapp/common/b/a/b$b;->a(Lcom/startapp/common/b/a/b$a;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_36

    :catch_26
    move-exception p1

    .line 76
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/f$1;->a:Landroid/content/Context;

    sget-object v1, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "PeriodicMetaData.onPostExecute"

    const-string v3, ""

    invoke-static {v0, v1, v2, p1, v3}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    :goto_36
    return-void
.end method

.method protected c()Ljava/lang/Boolean;
    .registers 5

    const/4 v0, 0x3

    const-string v1, "Loading MetaData"

    .line 47
    invoke-static {v0, v1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 50
    :try_start_6
    iget-object v0, p0, Lcom/startapp/android/publish/common/metaData/f$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/l;->b(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/startapp/android/publish/common/metaData/MetaDataRequest;

    iget-object v1, p0, Lcom/startapp/android/publish/common/metaData/f$1;->a:Landroid/content/Context;

    sget-object v2, Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;->e:Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/common/metaData/MetaDataRequest;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/metaData/MetaDataRequest$a;)V

    .line 52
    iget-object v1, p0, Lcom/startapp/android/publish/common/metaData/f$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/startapp/android/publish/common/metaData/f$1;->b:Lcom/startapp/android/publish/common/model/AdPreferences;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/startapp/android/publish/common/metaData/MetaDataRequest;->fillApplicationDetails(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Z)V

    .line 53
    iget-object v1, p0, Lcom/startapp/android/publish/common/metaData/f$1;->b:Lcom/startapp/android/publish/common/model/AdPreferences;

    iget-object v2, p0, Lcom/startapp/android/publish/common/metaData/f$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/common/metaData/MetaDataRequest;->fillLocationDetails(Lcom/startapp/android/publish/common/model/AdPreferences;Landroid/content/Context;)V

    .line 54
    iget-object v1, p0, Lcom/startapp/android/publish/common/metaData/f$1;->a:Landroid/content/Context;

    sget-object v2, Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;->METADATA:Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;

    invoke-static {v2}, Lcom/startapp/android/publish/adsCommon/AdsConstants;->a(Lcom/startapp/android/publish/adsCommon/AdsConstants$ServiceApiType;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/startapp/android/publish/adsCommon/k/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/BaseRequest;Ljava/util/Map;)Lcom/startapp/common/a/h$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/common/a/h$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 55
    const-class v1, Lcom/startapp/android/publish/common/metaData/MetaData;

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/common/metaData/MetaData;

    iput-object v0, p0, Lcom/startapp/android/publish/common/metaData/f$1;->d:Lcom/startapp/android/publish/common/metaData/MetaData;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3e} :catch_41

    .line 60
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :catch_41
    move-exception v0

    const/4 v1, 0x6

    const-string v2, "Unable to handle GetMetaData command!!!!"

    .line 57
    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method
