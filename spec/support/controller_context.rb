
shared_context "GET #index" do
  it "responds successfully with an HTTP 200 status code" do
    get :index
    expect(response).to be_success
    expect(response).to have_http_status(200)
  end

  it "renders the index template" do
    get :index
    expect(response).to render_template("index")
  end

  it "loads all of the posts into @professor" do
    resource1 = create_one
    resource2 = create_two
    get :index

    expect(assigns(:professors)).to match_array([resource1,resource2])
  end
end

shared_context 'with valid attributes' do
  before do
     post :create , params
  end
  it 'creates the resource' do
    expect(count).to eq(1)
  end

  it 'redirects to the "show" action for the new resource' do
    expect(response).to redirect_to first
  end
end

shared_context 'with invalid attributes' do
   before do
     post :create , invalid_params
   end
   it 'does not create the resource' do
     expect(count).to eq(0)
   end

   it 're-renders the "new" view' do
     expect(response).to render_template :new
   end
 end
