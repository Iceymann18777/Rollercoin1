.class public final Lcom/appnext/base/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LibrarySettings"

.field public static final fA:Ljava/lang/String; = "_cycles"

.field public static final fB:Ljava/lang/String; = "google_ads_id"

.field public static final fC:Ljava/lang/String; = "lat"

.field public static final fD:Ljava/lang/String; = "lib_shared_preferences"

.field private static final fE:Lcom/appnext/base/b/i;

.field public static final fy:Ljava/lang/String; = "_lastupdate"

.field public static final fz:Ljava/lang/String; = "_lastcollectedtime"


# instance fields
.field private fx:Landroid/content/SharedPreferences;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lcom/appnext/base/b/i;

    invoke-direct {v0}, Lcom/appnext/base/b/i;-><init>()V

    sput-object v0, Lcom/appnext/base/b/i;->fE:Lcom/appnext/base/b/i;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/appnext/base/b/e;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/base/b/i;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    const-string v2, "LibrarySettings"

    .line 1127
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/appnext/base/b/i;->fx:Landroid/content/SharedPreferences;

    :cond_14
    return-void
.end method

.method public static aR()Lcom/appnext/base/b/i;
    .registers 1

    .line 37
    sget-object v0, Lcom/appnext/base/b/i;->fE:Lcom/appnext/base/b/i;

    return-object v0
.end method

.method private aS()Landroid/content/SharedPreferences;
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/appnext/base/b/i;->mContext:Landroid/content/Context;

    const-string v1, "LibrarySettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/appnext/base/b/i;->fx:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/appnext/base/b/i;->fx:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_9

    .line 78
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_9
    return p2
.end method

.method public final getInt(Ljava/lang/String;I)I
    .registers 4

    .line 69
    iget-object p2, p0, Lcom/appnext/base/b/i;->fx:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    .line 70
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_a
    return v0
.end method

.method public final getLong(Ljava/lang/String;J)J
    .registers 5

    .line 61
    iget-object v0, p0, Lcom/appnext/base/b/i;->fx:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_9

    .line 62
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    :cond_9
    return-wide p2
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/appnext/base/b/i;->fx:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_9

    .line 54
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    return-object p2
.end method

.method public final getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/appnext/base/b/i;->fx:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_9

    .line 111
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_9
    return-object p2
.end method

.method public final init(Landroid/content/Context;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 48
    :cond_3
    iput-object p1, p0, Lcom/appnext/base/b/i;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "lib_shared_preferences"

    .line 49
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/base/b/i;->fx:Landroid/content/SharedPreferences;

    return-void
.end method

.method public final putBoolean(Ljava/lang/String;Z)V
    .registers 4

    .line 98
    iget-object p2, p0, Lcom/appnext/base/b/i;->fx:Landroid/content/SharedPreferences;

    if-eqz p2, :cond_10

    .line 99
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_10
    return-void
.end method

.method public final putInt(Ljava/lang/String;I)V
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/appnext/base/b/i;->fx:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_f

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_f
    return-void
.end method

.method public final putLong(Ljava/lang/String;J)V
    .registers 5

    .line 86
    iget-object v0, p0, Lcom/appnext/base/b/i;->fx:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_f

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_f
    return-void
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 104
    iget-object v0, p0, Lcom/appnext/base/b/i;->fx:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_f

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_f
    return-void
.end method

.method public final putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/appnext/base/b/i;->fx:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_18

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    iget-object v0, p0, Lcom/appnext/base/b/i;->fx:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_18
    return-void
.end method
