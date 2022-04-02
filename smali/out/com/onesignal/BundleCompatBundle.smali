.class Lcom/onesignal/BundleCompatBundle;
.super Ljava/lang/Object;
.source "BundleCompat.java"

# interfaces
.implements Lcom/onesignal/BundleCompat;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/onesignal/BundleCompat<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public bridge synthetic getBundle()Ljava/lang/Object;
    .registers 2

    .line 130
    invoke-virtual {p0}, Lcom/onesignal/BundleCompatBundle;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putLong(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 6

    .line 157
    iget-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBundle(Landroid/os/Parcelable;)V
    .registers 2

    .line 197
    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Lcom/onesignal/BundleCompatBundle;->mBundle:Landroid/os/Bundle;

    return-void
.end method
