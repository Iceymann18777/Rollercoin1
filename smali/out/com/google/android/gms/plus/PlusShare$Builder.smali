.class public Lcom/google/android/gms/plus/PlusShare$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/PlusShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private zzp:Z

.field private zzq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzp:Z

    :cond_22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public addCallToAction(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzp:Z

    const-string v1, "Must include the launching activity with PlusShare.Builder constructor before setting call-to-action"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_16

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    const-string v2, "Must provide a call to action URL"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "label"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "url"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_49

    invoke-static {p3}, Lcom/google/android/gms/plus/PlusShare;->zza(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "The specified deep-link ID was malformed."

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string p1, "deepLinkId"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    iget-object p1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string p2, "com.google.android.apps.plus.CALL_TO_ACTION"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string p2, "com.google.android.apps.plus.GOOGLE_INTERACTIVE_POST"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string p2, "text/plain"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public addStream(Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_11

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/PlusShare$Builder;->setStream(Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;

    move-result-object p1

    return-object p1

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzq:Ljava/util/ArrayList;

    if-nez v1, :cond_1c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzq:Ljava/util/ArrayList;

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzq:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iget-object v3, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v5, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v6, "com.google.android.apps.plus.GOOGLE_INTERACTIVE_POST"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v0, :cond_2a

    if-nez v5, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v6, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v6, 0x1

    :goto_2b
    const-string v7, "Call-to-action buttons are only available for URLs."

    invoke-static {v6, v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v6, "com.google.android.apps.plus.CONTENT_URL"

    if-eqz v5, :cond_3f

    iget-object v7, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 v7, 0x0

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 v7, 0x1

    :goto_40
    const-string v8, "The content URL is required for interactive posts."

    invoke-static {v7, v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v7, "com.google.android.apps.plus.CONTENT_DEEP_LINK_ID"

    if-eqz v5, :cond_5b

    iget-object v5, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5b

    iget-object v5, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 v1, 0x0

    :cond_5b
    :goto_5b
    const-string v5, "Must set content URL or content deep-link ID to use a call-to-action button."

    invoke-static {v1, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/plus/PlusShare;->zza(Ljava/lang/String;)Z

    move-result v1

    const-string v5, "The specified deep-link ID was malformed."

    invoke-static {v1, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    :cond_77
    const-string v1, "android.intent.extra.STREAM"

    if-nez v0, :cond_a4

    if-eqz v3, :cond_a4

    iget-object v5, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzq:Ljava/util/ArrayList;

    if-eqz v5, :cond_9c

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9c

    iget-object v5, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzq:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_a1

    :cond_9c
    iget-object v2, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_a1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzq:Ljava/util/ArrayList;

    :cond_a4
    if-eqz v0, :cond_c4

    if-nez v3, :cond_c4

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzq:Ljava/util/ArrayList;

    if-eqz v0, :cond_bf

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bf

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_c4

    :cond_bf
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_c4
    :goto_c4
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.google.android.gms.plus.action.SHARE_INTERNAL_GOOGLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "com.google.android.gms"

    if-eqz v0, :cond_dc

    :goto_d4
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_d9
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    return-object v0

    :cond_dc
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ec

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.plus.action.SHARE_GOOGLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_d4

    :cond_ec
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.apps.plus"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_d9
.end method

.method public setContentDeepLinkId(Ljava/lang/String;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/google/android/gms/plus/PlusShare$Builder;->setContentDeepLinkId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setContentDeepLinkId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzp:Z

    const-string v1, "Must include the launching activity with PlusShare.Builder constructor before setting deep links"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "The deepLinkId parameter is required."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "description"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2c

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "thumbnailUrl"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    iget-object p2, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string p3, "com.google.android.apps.plus.CONTENT_DEEP_LINK_ID"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string p2, "com.google.android.apps.plus.CONTENT_DEEP_LINK_METADATA"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string p2, "text/plain"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setContentUrl(Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "com.google.android.apps.plus.CONTENT_URL"

    if-eqz v0, :cond_16

    iget-object p1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_1b

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1b
    return-object p0
.end method

.method public setRecipients(Lcom/google/android/gms/plus/model/people/Person;Ljava/util/List;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/plus/model/people/Person;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/model/people/Person;",
            ">;)",
            "Lcom/google/android/gms/plus/PlusShare$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/google/android/gms/plus/model/people/Person;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_9
    const-string p1, "0"

    :goto_b
    const-string v1, "com.google.android.apps.plus.SENDER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_17

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    const-string v0, "com.google.android.apps.plus.RECIPIENT_DISPLAY_NAMES"

    const-string v1, "com.google.android.apps.plus.RECIPIENT_IDS"

    if-nez p1, :cond_29

    iget-object p1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return-object p0

    :cond_29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/plus/model/people/Person;

    invoke-interface {p2}, Lcom/google/android/gms/plus/model/people/Person;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Lcom/google/android/gms/plus/model/people/Person;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_52
    iget-object p1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object p0
.end method

.method public setStream(Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->zzq:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/android/gms/plus/PlusShare$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusShare$Builder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method
