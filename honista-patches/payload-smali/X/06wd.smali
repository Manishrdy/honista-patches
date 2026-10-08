.class public final LX/06wd;
.super LX/0AwG;
.implements LX/0mqB;

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    nop

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, v0}, LX/0C3h;->A0h(Ljava/lang/Object;I)V

    const/4 v0, 0x1

    invoke-static {p2, v0}, LX/0C3h;->A0h(Ljava/lang/Object;I)V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v0, "X-Client-Doc-Id"

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, LX/06wd;->A01:Lcom/instagram/graphservice/service/pando/IGPandoGraphQLRequestDecoratorInfo;

    invoke-virtual {v3, p1}, Lcom/instagram/graphservice/service/pando/IGPandoGraphQLRequestDecoratorInfo;->shouldUseRegionHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "x-ig-graphql-region-hint"

    invoke-virtual {v3, p1, v0}, Lcom/instagram/graphservice/service/pando/IGPandoGraphQLRequestDecoratorInfo;->getRegionHintHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p1}, Lcom/instagram/graphservice/service/pando/IGPandoGraphQLRequestDecoratorInfo;->getRegionHint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-boolean v0, p0, LX/06wd;->A02:Z

    if-eqz v0, :cond_2

    sget-object v0, LX/07s9;->A00:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-static {}, LX/07s9;->A00()Landroid/content/Context;

    move-result-object v0

    :cond_1
    :try_start_0
    invoke-static {v0}, LX/0BPc;->A00(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "android-"

    :goto_0
    const-string v0, "X-IG-Android-ID"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-boolean v0, p0, LX/06wd;->A04:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, LX/06wd;->A00:LX/0BCv;

    invoke-static {v0}, LX/02jk;->A00(LX/0BCv;)LX/0Xep;

    move-result-object v0

    invoke-interface {v0}, LX/0hAY;->CUf()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v0, "X-Pigeon-Session-Id"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-boolean v0, p0, LX/06wd;->A03:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, LX/06wd;->A00:LX/0BCv;

    invoke-static {v0}, LX/02jk;->A00(LX/0BCv;)LX/0Xep;

    move-result-object v0

    invoke-interface {v0}, LX/0hAY;->CUe()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v0, "X-Pigeon-Rawclienttime"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {}, LX/02zq;->A00()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v0, "X-IG-Timezone-Offset"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, LX/06jh;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, v2}, LX/01tl;->A06(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method
