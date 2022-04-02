.class public Lcom/startapp/android/publish/adsCommon/k;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field private static a:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 25
    sget-object v0, Lcom/startapp/android/publish/adsCommon/k;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_11

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "com.startapp.android.publish"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/startapp/android/publish/adsCommon/k;->a:Landroid/content/SharedPreferences;

    .line 28
    :cond_11
    sget-object p0, Lcom/startapp/android/publish/adsCommon/k;->a:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 3

    .line 32
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .registers 3

    .line 56
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3

    .line 48
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 5

    .line 64
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 40
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 74
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 75
    invoke-static {p0, p1, p2}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 84
    :try_start_9
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 86
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 87
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_27} :catch_29
    .catchall {:try_start_9 .. :try_end_27} :catchall_2d

    goto :goto_12

    :cond_28
    return-object p2

    :catch_29
    move-exception p0

    .line 92
    :try_start_2a
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2d

    :catchall_2d
    return-object p2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    .line 36
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V
    .registers 3

    .line 60
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3

    .line 52
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 5

    .line 68
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 44
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
