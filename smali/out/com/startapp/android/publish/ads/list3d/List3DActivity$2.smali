.class Lcom/startapp/android/publish/ads/list3d/List3DActivity$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/list3d/List3DActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/list3d/List3DActivity;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/list3d/List3DActivity;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/startapp/android/publish/ads/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/ads/list3d/List3DActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 189
    iget-object p4, p0, Lcom/startapp/android/publish/ads/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/ads/list3d/List3DActivity;

    new-instance v0, Lcom/startapp/android/publish/adsCommon/d/b;

    iget-object v1, p4, Lcom/startapp/android/publish/ads/list3d/List3DActivity;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/adsCommon/d/b;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4, v0}, Lcom/startapp/android/publish/adsCommon/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/d/b;)V

    .line 190
    iget-object p1, p0, Lcom/startapp/android/publish/ads/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/ads/list3d/List3DActivity;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/list3d/List3DActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 157
    iget-object v2, v0, Lcom/startapp/android/publish/ads/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/ads/list3d/List3DActivity;

    iget-object v2, v2, Lcom/startapp/android/publish/ads/list3d/List3DActivity;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/android/publish/ads/list3d/ListItem;

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/list3d/ListItem;->b()Ljava/lang/String;

    move-result-object v4

    .line 158
    iget-object v2, v0, Lcom/startapp/android/publish/ads/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/ads/list3d/List3DActivity;

    iget-object v2, v2, Lcom/startapp/android/publish/ads/list3d/List3DActivity;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/android/publish/ads/list3d/ListItem;

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/list3d/ListItem;->e()Ljava/lang/String;

    move-result-object v5

    .line 159
    iget-object v2, v0, Lcom/startapp/android/publish/ads/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/ads/list3d/List3DActivity;

    iget-object v2, v2, Lcom/startapp/android/publish/ads/list3d/List3DActivity;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/android/publish/ads/list3d/ListItem;

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/list3d/ListItem;->f()Ljava/lang/String;

    move-result-object v6

    .line 160
    iget-object v2, v0, Lcom/startapp/android/publish/ads/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/ads/list3d/List3DActivity;

    iget-object v2, v2, Lcom/startapp/android/publish/ads/list3d/List3DActivity;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/android/publish/ads/list3d/ListItem;

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/list3d/ListItem;->l()Z

    move-result v2

    .line 161
    iget-object v3, v0, Lcom/startapp/android/publish/ads/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/ads/list3d/List3DActivity;

    iget-object v3, v3, Lcom/startapp/android/publish/ads/list3d/List3DActivity;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapp/android/publish/ads/list3d/ListItem;

    invoke-virtual {v3}, Lcom/startapp/android/publish/ads/list3d/ListItem;->m()Z

    move-result v12

    .line 162
    iget-object v3, v0, Lcom/startapp/android/publish/ads/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/ads/list3d/List3DActivity;

    iget-object v3, v3, Lcom/startapp/android/publish/ads/list3d/List3DActivity;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapp/android/publish/ads/list3d/ListItem;

    invoke-virtual {v3}, Lcom/startapp/android/publish/ads/list3d/ListItem;->p()Ljava/lang/String;

    move-result-object v3

    .line 163
    iget-object v7, v0, Lcom/startapp/android/publish/ads/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/ads/list3d/List3DActivity;

    iget-object v7, v7, Lcom/startapp/android/publish/ads/list3d/List3DActivity;->c:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/startapp/android/publish/ads/list3d/ListItem;

    invoke-virtual {v7}, Lcom/startapp/android/publish/ads/list3d/ListItem;->o()Ljava/lang/String;

    move-result-object v7

    .line 164
    iget-object v8, v0, Lcom/startapp/android/publish/ads/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/ads/list3d/List3DActivity;

    iget-object v8, v8, Lcom/startapp/android/publish/ads/list3d/List3DActivity;->c:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/startapp/android/publish/ads/list3d/ListItem;

    invoke-virtual {v8}, Lcom/startapp/android/publish/ads/list3d/ListItem;->s()Ljava/lang/Boolean;

    move-result-object v13

    .line 166
    invoke-static {}, Lcom/startapp/android/publish/ads/list3d/f;->a()Lcom/startapp/android/publish/ads/list3d/f;

    move-result-object v8

    iget-object v9, v0, Lcom/startapp/android/publish/ads/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/ads/list3d/List3DActivity;

    iget-object v9, v9, Lcom/startapp/android/publish/ads/list3d/List3DActivity;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/startapp/android/publish/ads/list3d/f;->a(Ljava/lang/String;)Lcom/startapp/android/publish/ads/list3d/e;

    move-result-object v8

    iget-object v9, v0, Lcom/startapp/android/publish/ads/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/ads/list3d/List3DActivity;

    iget-object v9, v9, Lcom/startapp/android/publish/ads/list3d/List3DActivity;->c:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/ads/list3d/ListItem;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/list3d/ListItem;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/startapp/android/publish/ads/list3d/e;->a(Ljava/lang/String;)V

    if-eqz v3, :cond_9d

    .line 168
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9d

    .line 169
    invoke-direct {v0, v3, v7, v4, v5}, Lcom/startapp/android/publish/ads/list3d/List3DActivity$2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ec

    .line 170
    :cond_9d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ec

    .line 171
    iget-object v1, v0, Lcom/startapp/android/publish/ads/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/ads/list3d/List3DActivity;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/list3d/List3DActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_OFFER_WALL:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-static {v1, v3}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Z

    move-result v1

    if-eqz v2, :cond_d4

    if-eqz v1, :cond_b4

    goto :goto_d4

    .line 176
    :cond_b4
    iget-object v3, v0, Lcom/startapp/android/publish/ads/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/ads/list3d/List3DActivity;

    invoke-virtual {v3}, Lcom/startapp/android/publish/ads/list3d/List3DActivity;->a()Lcom/startapp/android/publish/adsCommon/d/b;

    move-result-object v7

    .line 177
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/b;->A()J

    move-result-wide v8

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/b;->B()J

    move-result-wide v10

    const/4 v14, 0x0

    new-instance v15, Lcom/startapp/android/publish/ads/list3d/List3DActivity$2$1;

    invoke-direct {v15, v0}, Lcom/startapp/android/publish/ads/list3d/List3DActivity$2$1;-><init>(Lcom/startapp/android/publish/ads/list3d/List3DActivity$2;)V

    .line 176
    invoke-static/range {v3 .. v15}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;JJZLjava/lang/Boolean;ZLjava/lang/Runnable;)V

    goto :goto_ec

    .line 173
    :cond_d4
    :goto_d4
    iget-object v3, v0, Lcom/startapp/android/publish/ads/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/ads/list3d/List3DActivity;

    invoke-virtual {v3}, Lcom/startapp/android/publish/ads/list3d/List3DActivity;->a()Lcom/startapp/android/publish/adsCommon/d/b;

    move-result-object v6

    if-eqz v12, :cond_e1

    if-nez v1, :cond_e1

    const/4 v1, 0x1

    const/4 v7, 0x1

    goto :goto_e3

    :cond_e1
    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_e3
    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;ZZ)V

    .line 174
    iget-object v1, v0, Lcom/startapp/android/publish/ads/list3d/List3DActivity$2;->a:Lcom/startapp/android/publish/ads/list3d/List3DActivity;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/list3d/List3DActivity;->finish()V

    :cond_ec
    :goto_ec
    return-void
.end method
