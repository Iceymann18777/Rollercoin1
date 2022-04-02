.class final Lcom/tappx/a/q2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method private b(Lcom/tappx/a/p2;)I
    .registers 5

    .line 8
    sget-object v0, Lcom/tappx/a/q2$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_18

    const/4 v2, 0x3

    if-eq p1, v2, :cond_17

    const/4 v1, 0x4

    if-eq p1, v1, :cond_16

    const/4 p1, 0x0

    return p1

    :cond_16
    return v0

    :cond_17
    return v1

    :cond_18
    const/4 p1, -0x1

    return p1

    :cond_1a
    const/4 p1, -0x2

    return p1
.end method

.method private b(Ljava/lang/Boolean;)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, -0x1

    :goto_d
    return p1
.end method

.method private b(I)Ljava/lang/Boolean;
    .registers 5

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_c

    if-eq p1, v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    return-object v1
.end method

.method private c(I)Lcom/tappx/a/p2;
    .registers 3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_18

    const/4 v0, -0x1

    if-eq p1, v0, :cond_15

    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f

    .line 1
    sget-object p1, Lcom/tappx/a/p2;->e:Lcom/tappx/a/p2;

    return-object p1

    .line 2
    :cond_f
    sget-object p1, Lcom/tappx/a/p2;->a:Lcom/tappx/a/p2;

    return-object p1

    .line 4
    :cond_12
    sget-object p1, Lcom/tappx/a/p2;->c:Lcom/tappx/a/p2;

    return-object p1

    .line 5
    :cond_15
    sget-object p1, Lcom/tappx/a/p2;->d:Lcom/tappx/a/p2;

    return-object p1

    .line 6
    :cond_18
    sget-object p1, Lcom/tappx/a/p2;->b:Lcom/tappx/a/p2;

    return-object p1
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 11
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tappx_privacy_applies"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tappx_privacy_autoDisclaimer"

    .line 12
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tappx_consent_timestamp"

    .line 13
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tappx_privacy_renew"

    .line 14
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tappx_privacy_consent_html"

    .line 15
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(I)V
    .registers 4

    .line 17
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tappx_privacy_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(J)V
    .registers 5

    .line 18
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tappx_consent_timestamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Lcom/tappx/a/p2;)V
    .registers 4

    .line 8
    invoke-direct {p0, p1}, Lcom/tappx/a/q2;->b(Lcom/tappx/a/p2;)I

    move-result p1

    .line 9
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tappx_privacy_accepted"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 4

    .line 5
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    invoke-direct {p0, p1}, Lcom/tappx/a/q2;->b(Ljava/lang/Boolean;)I

    move-result p1

    const-string v1, "tappx_privacy_applies"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/tappx/a/q2;->b(Ljava/lang/Boolean;)I

    move-result p1

    const-string v1, "tappx_privacy_applies"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "tappx_privacy_consent_html"

    .line 3
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 19
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tappx_mark_choice"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Z)V
    .registers 4

    .line 10
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tappx_privacy_autoDisclaimer"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b()V
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tappx_privacy_accepted"

    .line 6
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tappx_sync_required"

    .line 7
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .line 9
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tappx_privacy_gdpr_consent"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b(Z)V
    .registers 4

    .line 10
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tappx_sync_required"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .line 10
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tappx_usprivacy_string"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public c(Z)V
    .registers 4

    const-string v0, "tappx_privacy_renew"

    if-eqz p1, :cond_13

    .line 7
    iget-object p1, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_20

    .line 9
    :cond_13
    iget-object p1, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_20
    return-void
.end method

.method public c()Z
    .registers 4

    .line 11
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    const-string v1, "tappx_sync_required"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/Boolean;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    const-string v1, "tappx_privacy_applies"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Lcom/tappx/a/q2;->b(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public e()J
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    const-string v1, "tappx_consent_timestamp"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    const-string v1, "tappx_privacy_gdpr_consent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/tappx/a/p2;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    const-string v1, "tappx_privacy_accepted"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Lcom/tappx/a/q2;->c(I)Lcom/tappx/a/p2;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    const-string v1, "tappx_mark_choice"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    const-string v1, "tappx_privacy_consent_html"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    const-string v1, "tappx_privacy_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    const-string v1, "tappx_usprivacy_string"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    const-string v1, "tappx_privacy_autoDisclaimer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/q2;->a:Landroid/content/SharedPreferences;

    const-string v1, "tappx_privacy_renew"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
